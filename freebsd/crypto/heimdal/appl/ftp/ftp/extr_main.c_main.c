
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent {int dummy; } ;
struct passwd {int pw_dir; } ;
typedef int homedir ;


 int MaxPathLen ;
 int SIGINT ;
 int SIGPIPE ;
 int SO_DEBUG ;
 int autologin ;
 int cmdscanner (int) ;
 scalar_t__ cpend ;
 int crflag ;
 int debug ;
 scalar_t__ debug_flag ;
 int doglob ;
 int errx (int,char*) ;
 int exit (int ) ;
 int fileno (int ) ;
 scalar_t__ fromatty ;
 int ftp_do_gss_bindings ;
 scalar_t__ getarg (int ,int ,int,char**,int*) ;
 int getargs ;
 scalar_t__ getprogname () ;
 struct servent* getservbyname (char*,char*) ;
 int getuid () ;
 scalar_t__ help_flag ;
 char* home ;
 int interactive ;
 int intr ;
 scalar_t__ isatty (int ) ;
 struct passwd* k_getpwuid (int ) ;
 int lineedit ;
 int lostpeer ;
 int num_args ;
 int options ;
 scalar_t__ passivemode ;
 int print_version (int *) ;
 scalar_t__ proxy ;
 int sendport ;
 scalar_t__ setjmp (int ) ;
 int setpeer (int,char**) ;
 int setprogname (char*) ;
 int signal (int ,int ) ;
 int stdin ;
 int strlcpy (char*,int ,int) ;
 int toplevel ;
 int usage (int) ;
 int use_kerberos ;
 int verbose ;
 scalar_t__ version_flag ;

int
main(int argc, char **argv)
{
 int top;
 struct passwd *pw = ((void*)0);
 char homedir[MaxPathLen];
 struct servent *sp;
 int optind = 0;

 setprogname(argv[0]);

 sp = getservbyname("ftp", "tcp");
 if (sp == 0)
  errx(1, "ftp/tcp: unknown service");
 doglob = 1;
 interactive = 1;
 autologin = 1;
 lineedit = 1;
 passivemode = 0;
        use_kerberos = 1;




 if(getarg(getargs, num_args, argc, argv, &optind))
  usage(1);
 if(help_flag)
  usage(0);
 if(version_flag) {
  print_version(((void*)0));
  exit(0);
 }

 if (debug_flag) {
  options |= SO_DEBUG;
  debug++;
 }

 argc -= optind;
 argv += optind;

 fromatty = isatty(fileno(stdin));
 if (fromatty)
  verbose++;
 cpend = 0;
 proxy = 0;
 crflag = 1;
 sendport = -1;



 pw = k_getpwuid(getuid());
 if (pw != ((void*)0)) {
  strlcpy(homedir, pw->pw_dir, sizeof(homedir));
  home = homedir;
 }
 if (argc > 0) {
     char *xargv[5];

     if (setjmp(toplevel))
  exit(0);
     signal(SIGINT, intr);
     signal(SIGPIPE, lostpeer);
     xargv[0] = (char*)getprogname();
     xargv[1] = argv[0];
     xargv[2] = argv[1];
     xargv[3] = argv[2];
     xargv[4] = ((void*)0);
     setpeer(argc+1, xargv);
 }
 if(setjmp(toplevel) == 0)
     top = 1;
 else
     top = 0;
 if (top) {
     signal(SIGINT, intr);
     signal(SIGPIPE, lostpeer);
 }
 for (;;) {
     cmdscanner(top);
     top = 1;
 }
}
