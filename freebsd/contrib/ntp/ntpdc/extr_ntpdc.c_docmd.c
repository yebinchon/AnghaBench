
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xcmd {int* arg; int (* handler ) (struct parse*,int *) ;} ;
struct parse {char* keyword; scalar_t__ nargs; int * argval; } ;


 int MAXARGS ;
 scalar_t__ MAXLINE ;
 int MOREARGS ;
 int NO ;
 int NTP_STR ;
 int OPT ;
 int SETJMP (int ) ;
 int ai_fam_default ;
 int ai_fam_templ ;
 int builtins ;
 int * current_output ;
 int fclose (int *) ;
 int fflush (int *) ;
 int findcmd (char*,int ,int ,struct xcmd**) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 int fputs (char*,int *) ;
 int getarg (char*,int,int *) ;
 scalar_t__ interactive ;
 int interrupt_buf ;
 int jump ;
 int opcmds ;
 int perror (char*) ;
 int printusage (struct xcmd*,int *) ;
 int * stderr ;
 int * stdout ;
 scalar_t__ strlen (char const*) ;
 int stub1 (struct parse*,int *) ;
 int stub2 (struct parse*,int *) ;
 int tokenize (char const*,char**,int*) ;

__attribute__((used)) static void
docmd(
 const char *cmdline
 )
{
 char *tokens[1+MAXARGS+MOREARGS+2];
 struct parse pcmd;
 int ntok;
 int i, ti;
 int rval;
 struct xcmd *xcmd;

 ai_fam_templ = ai_fam_default;



 if (strlen(cmdline) >= MAXLINE) {
  fprintf(stderr, "***Command ignored, more than %d characters:\n%s\n",
   MAXLINE - 1, cmdline);
  return;
 }
 tokenize(cmdline, tokens, &ntok);
 if (ntok == 0)
     return;




 i = findcmd(tokens[0], builtins, opcmds, &xcmd);
 if (i == 0) {
  (void) fprintf(stderr, "***Command `%s' unknown\n",
          tokens[0]);
  return;
 } else if (i >= 2) {
  (void) fprintf(stderr, "***Command `%s' ambiguous\n",
          tokens[0]);
  return;
 }





 pcmd.keyword = tokens[0];
 pcmd.nargs = 0;
 ti = 1;
 for (i = 0; i < MAXARGS && xcmd->arg[i] != NO;) {
  if ((i+ti) >= ntok) {
   if (!(xcmd->arg[i] & OPT)) {
    printusage(xcmd, stderr);
    return;
   }
   break;
  }
  if ((xcmd->arg[i] & OPT) && (*tokens[i+ti] == '>'))
   break;
  rval = getarg(tokens[i+ti], (int)xcmd->arg[i], &pcmd.argval[i]);
  if (rval == -1) {
   ti++;
   continue;
  }
  if (rval == 0)
   return;
  pcmd.nargs++;
  i++;
 }


 for ( ; i < MAXARGS + MOREARGS;) {
      if ((i+ti) >= ntok)
    break;
  rval = getarg(tokens[i+ti], (int)(OPT|NTP_STR), &pcmd.argval[i]);
  if (rval == -1) {
   ti++;
   continue;
  }
  if (rval == 0)
   return;
  pcmd.nargs++;
  i++;
 }

 i += ti;
 if (i < ntok && *tokens[i] == '>') {
  char *fname;

  if (*(tokens[i]+1) != '\0')
      fname = tokens[i]+1;
  else if ((i+1) < ntok)
      fname = tokens[i+1];
  else {
   (void) fprintf(stderr, "***No file for redirect\n");
   return;
  }

  current_output = fopen(fname, "w");
  if (current_output == ((void*)0)) {
   (void) fprintf(stderr, "***Error opening %s: ", fname);
   perror("");
   return;
  }
 } else {
  current_output = stdout;
 }

 if (interactive) {
  if ( ! SETJMP(interrupt_buf)) {
   jump = 1;
   (xcmd->handler)(&pcmd, current_output);
   jump = 0;
  } else {
   fflush(current_output);
   fputs("\n >>> command aborted <<<\n", stderr);
   fflush(stderr);
  }
 } else {
  jump = 0;
  (xcmd->handler)(&pcmd, current_output);
 }
 if ((((void*)0) != current_output) && (stdout != current_output)) {
  (void)fclose(current_output);
  current_output = ((void*)0);
 }
}
