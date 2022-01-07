
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int FILE ;


 int INBUFSIZE ;
 char* explode (char*) ;
 int fclose (int *) ;
 char* fgets (char*,int,int *) ;
 int findtoken (char*) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,...) ;
 char* gettoken (char**,char*) ;
 char** keyword ;
 char* pname ;
 int stderr ;
 int * stdin ;
 int stdout ;
 char* strrchr (char*,char) ;

int
main(int argc, char *argv[])
{
    char line[INBUFSIZE];
    const char *fname = "stdin";
    char *ptr, *tok;
    char defs[INBUFSIZE];
    char stmt[INBUFSIZE];
    FILE *fp = stdin;
    int lineno = 0;
    int inprocess = 0;
    int token, state;
    int errs = 0;

    if ((pname = strrchr(argv[0], '/')) == ((void*)0))
 pname = argv[0];
    else
 pname++;

    if (argc > 2) {
 (void) fprintf(stderr, "Usage: %s [<filename>]\n", pname);
 return 1;
    }

    if (argc == 2)
 if ((fp = fopen(fname = argv[1], "r")) == ((void*)0)) {
     (void) fprintf(stderr, "%s: Cannot open `%s'\n", pname, fname);
     return 1;
 }

    state = 140;

    while ((ptr = fgets(line, sizeof(line), fp)) != ((void*)0)) {
 lineno++;
 switch (token = findtoken(gettoken(&ptr, defs))) {
 case 132:
     state = 142;
     break;

 case 137:
     state = 140;
     break;

 case 138:
     state = 141;
     break;

 case 131:
     state = 139;
     break;

 case 136:
     state = 140;
     break;

 case 128:
     state = 139;
     break;

 case 135:
     state = 139;
     break;

 case 134:
     state = 139;
     break;

 case 129:
     state = 139;
     break;

 case 133:
     if (gettoken(&ptr, defs) == ((void*)0)) {
  (void) fprintf(stderr, "%s: \"%s\", %d: Missing macro name\n",
          pname, fname, lineno);
  break;
     }
     if (gettoken(&ptr, stmt) == ((void*)0)) {
  (void) fprintf(stderr, "%s: \"%s\", %d: Missing macro body\n",
          pname, fname, lineno);
  break;
     }
     (void) fprintf(stdout, "\n#if %s\n# define %s\n#endif\n\n",
  explode(stmt), defs);
     break;

 case 130:
     if (state != 142 && *defs != '\0') {
  (void) fprintf(stderr, "%s: \"%s\", %d: Discarded\n",
          pname, fname, lineno);
  if (++errs == 30) {
      (void) fprintf(stderr, "%s: Too many errors\n", pname);
      return 1;
  }
  break;
     }
     (void) fprintf(stdout, "%s", line);
     break;

 default:
     (void) fprintf(stderr, "%s: \"%s\", %d: Unexpected token\n",
      pname, fname, lineno);
     return 1;
 }

 switch (state) {
 case 140:
     if (inprocess) {
  inprocess = 0;
  (void) fprintf(stdout, "#endif\n");
     }
     break;

 case 139:
     tok = gettoken(&ptr, defs);
     if (token == 131) {
  if (inprocess) {
      (void) fprintf(stderr, "%s: \"%s\", %d: Missing enddef\n",
       pname, fname, lineno);
      return 1;
  }
  if (tok == ((void*)0)) {
      (void) fprintf(stderr, "%s: \"%s\", %d: No defs\n",
       pname, fname, lineno);
      return 1;
  }
  (void) fprintf(stdout, "\n\n");



  (void) fprintf(stdout, "#if (%s)\n", explode(defs));
  inprocess = 1;
     }
     else {
  if (tok && *tok)
      (void) fprintf(stdout, "# if (%s) && !defined(_%s_)\n",
       explode(defs), keyword[token]);
  else
      (void) fprintf(stdout, "# if !defined(_%s_)\n",
       keyword[token]);

  if (gettoken(&ptr, stmt) == ((void*)0)) {
      (void) fprintf(stderr, "%s: \"%s\", %d: No statement\n",
       pname, fname, lineno);
      return 1;
  }
  (void) fprintf(stdout, "# define _%s_\n", keyword[token]);
  (void) fprintf(stdout, "    %s = %s;\n", keyword[token], stmt);
  (void) fprintf(stdout, "# endif\n");
     }
     break;

 case 141:
     if (gettoken(&ptr, defs))
  (void) fprintf(stdout, "    /* %s */\n", defs);
     break;

 case 142:
     if (token == 132) {



     }
     break;

 default:
     (void) fprintf(stderr, "%s: \"%s\", %d: Unexpected state\n",
      pname, fname, lineno);
     return 1;
 }
    }

    if (inprocess) {
 (void) fprintf(stderr, "%s: \"%s\", %d: Missing enddef\n",
         pname, fname, lineno);
 return 1;
    }

    if (fp != stdin)
 (void) fclose(fp);

    return 0;
}
