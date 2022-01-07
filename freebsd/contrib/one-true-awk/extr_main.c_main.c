
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FATAL (char*,...) ;
 int * FS ;
 int LC_COLLATE ;
 int LC_CTYPE ;
 int LC_NUMERIC ;
 int MAX_PFILE ;
 int NSYMTAB ;
 int SIGFPE ;
 int WARNING (char*,...) ;
 int arginit (int,char**) ;
 scalar_t__ atoi (char*) ;
 int bracecheck () ;
 char* cmdname ;
 int compile_time ;
 scalar_t__ dbg ;
 int dprintf (char*) ;
 int envinit (int ) ;
 int environ ;
 scalar_t__ errorflag ;
 int exit (int) ;
 int fpecatch ;
 int fprintf (int ,char*,char*) ;
 int isclvar (char*) ;
 char* lexprog ;
 int makesymtab (int) ;
 scalar_t__ npfile ;
 char** pfile ;
 int printf (char*,char*) ;
 int qstring (char const*,char) ;
 int recinit (int ) ;
 int recsize ;
 int run (int ) ;
 int safe ;
 int setclvar (char*) ;
 int setlocale (int ,char*) ;
 int signal (int ,int ) ;
 int srand_seed ;
 int srandom (unsigned long) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int syminit () ;
 int symtab ;
 char* version ;
 int winner ;
 int * yyin ;
 int yyparse () ;

int main(int argc, char *argv[])
{
 const char *fs = ((void*)0);

 setlocale(LC_CTYPE, "");
 setlocale(LC_COLLATE, "");
 setlocale(LC_NUMERIC, "C");
 cmdname = argv[0];
 if (argc == 1) {
  fprintf(stderr,
    "usage: %s [-F fs] [-v var=value] [-f progfile | 'prog'] [file ...]\n",
    cmdname);
  exit(1);
 }
 signal(SIGFPE, fpecatch);


 srand_seed = 1;
 srandom((unsigned long) srand_seed);

 yyin = ((void*)0);
 symtab = makesymtab(NSYMTAB/NSYMTAB);
 while (argc > 1 && argv[1][0] == '-' && argv[1][1] != '\0') {
  if (strcmp(argv[1],"-version") == 0 || strcmp(argv[1],"--version") == 0) {
   printf("awk %s\n", version);
   exit(0);
   break;
  }
  if (strcmp(argv[1], "--") == 0) {
   argc--;
   argv++;
   break;
  }
  switch (argv[1][1]) {
  case 's':
   if (strcmp(argv[1], "-safe") == 0)
    safe = 1;
   break;
  case 'f':
   if (argv[1][2] != 0) {
    if (npfile >= MAX_PFILE - 1)
     FATAL("too many -f options");
    pfile[npfile++] = &argv[1][2];
   } else {
    argc--; argv++;
    if (argc <= 1)
     FATAL("no program filename");
    if (npfile >= MAX_PFILE - 1)
     FATAL("too many -f options");
    pfile[npfile++] = argv[1];
   }
   break;
  case 'F':
   if (argv[1][2] != 0) {
    if (argv[1][2] == 't' && argv[1][3] == 0)
     fs = "\t";
    else if (argv[1][2] != 0)
     fs = &argv[1][2];
   } else {
    argc--; argv++;
    if (argc > 1 && argv[1][0] == 't' && argv[1][1] == 0)
     fs = "\t";
    else if (argc > 1 && argv[1][0] != 0)
     fs = &argv[1][0];
   }
   if (fs == ((void*)0) || *fs == '\0')
    WARNING("field separator FS is empty");
   break;
  case 'v':
   if (argv[1][2] != 0) {
    if (isclvar(&argv[1][2]))
     setclvar(&argv[1][2]);
    else
     FATAL("invalid -v option argument: %s", &argv[1][2]);
   } else {
    argc--; argv++;
    if (argc <= 1)
     FATAL("no variable name");
    if (isclvar(argv[1]))
     setclvar(argv[1]);
    else
     FATAL("invalid -v option argument: %s", argv[1]);
   }
   break;
  case 'd':
   dbg = atoi(&argv[1][2]);
   if (dbg == 0)
    dbg = 1;
   printf("awk %s\n", version);
   break;
  default:
   WARNING("unknown option %s ignored", argv[1]);
   break;
  }
  argc--;
  argv++;
 }

 if (npfile == 0) {
  if (argc <= 1) {
   if (dbg)
    exit(0);
   FATAL("no program given");
  }
     dprintf( ("program = |%s|\n", argv[1]) );
  lexprog = argv[1];
  argc--;
  argv++;
 }
 recinit(recsize);
 syminit();
 compile_time = 1;
 argv[0] = cmdname;
    dprintf( ("argc=%d, argv[0]=%s\n", argc, argv[0]) );
 arginit(argc, argv);
 if (!safe)
  envinit(environ);
 yyparse();
 setlocale(LC_NUMERIC, "");
 if (fs)
  *FS = qstring(fs, '\0');
    dprintf( ("errorflag=%d\n", errorflag) );
 if (errorflag == 0) {
  compile_time = 0;
  run(winner);
 } else
  bracecheck();
 return(errorflag);
}
