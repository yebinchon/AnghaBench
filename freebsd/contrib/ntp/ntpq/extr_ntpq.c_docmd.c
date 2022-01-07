
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xcmd {int* arg; int (* handler ) (struct parse*,int *) ;} ;
struct parse {char* keyword; scalar_t__ nargs; int * argval; } ;


 int MAXARGS ;
 int NO ;
 int OPT ;
 int SETJMP (int ) ;
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
 int stub1 (struct parse*,int *) ;
 int stub2 (struct parse*,int *) ;
 int tokenize (char const*,char**,int*) ;

__attribute__((used)) static void
docmd(
 const char *cmdline
 )
{
 char *tokens[1+MAXARGS+2];
 struct parse pcmd;
 int ntok;
 static int i;
 struct xcmd *xcmd;




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


 for (i = MAXARGS + 1; i < ntok ; ++i) {
  fprintf(stderr, "***Extra arg `%s' ignored\n", tokens[i]);
 }





 pcmd.keyword = tokens[0];
 pcmd.nargs = 0;
 for (i = 0; i < MAXARGS && xcmd->arg[i] != NO; i++) {
  if ((i+1) >= ntok) {
   if (!(xcmd->arg[i] & OPT)) {
    printusage(xcmd, stderr);
    return;
   }
   break;
  }
  if ((xcmd->arg[i] & OPT) && (*tokens[i+1] == '>'))
   break;
  if (!getarg(tokens[i+1], (int)xcmd->arg[i], &pcmd.argval[i]))
   return;
  pcmd.nargs++;
 }

 i++;
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
