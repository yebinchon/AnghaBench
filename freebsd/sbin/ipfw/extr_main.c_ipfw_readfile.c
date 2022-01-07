
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pid_t ;
typedef int linename ;
typedef int buf ;
struct TYPE_2__ {int do_compact; int do_force; int do_resolv; int test_only; int do_quiet; int show_sets; } ;
typedef int FILE ;


 char* EX_OK ;
 int EX_OSERR ;
 int EX_UNAVAILABLE ;
 int EX_USAGE ;
 int SIGTERM ;
 char* WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 char* WTERMSIG (int) ;
 int close (int) ;
 TYPE_1__ co ;
 int dup2 (int,int) ;
 int err (int ,char*,...) ;
 int errno ;
 int errx (int ,char*,...) ;
 int execvp (char const*,char**) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 scalar_t__ fgets (char*,int,int *) ;
 int fileno (int *) ;
 int * fopen (char const*,char*) ;
 int fork () ;
 int getopt (int,char**,char*) ;
 int ipfw_main (int,char**) ;
 int kill (int,int ) ;
 char* optarg ;
 int optind ;
 int pipe (int*) ;
 int setprogname (char*) ;
 int snprintf (char*,int,char*,int) ;
 int waitpid (int,int*,int ) ;

__attribute__((used)) static void
ipfw_readfile(int ac, char *av[])
{

 char buf[4096];
 char *progname = av[0];
 const char *cmd = ((void*)0);
 const char *filename = av[ac-1];
 int c, lineno=0;
 FILE *f = ((void*)0);
 pid_t preproc = 0;

 while ((c = getopt(ac, av, "cfNnp:qS")) != -1) {
  switch(c) {
  case 'c':
   co.do_compact = 1;
   break;

  case 'f':
   co.do_force = 1;
   break;

  case 'N':
   co.do_resolv = 1;
   break;

  case 'n':
   co.test_only = 1;
   break;

  case 'p':
   if (optind == ac)
    errx(EX_USAGE, "no filename argument");
   cmd = optarg;
   av[ac-1] = ((void*)0);
   av += optind - 1;
   ac -= optind;
   optind = ac;
   break;

  case 'q':
   co.do_quiet = 1;
   break;

  case 'S':
   co.show_sets = 1;
   break;

  default:
   errx(EX_USAGE, "bad arguments, for usage"
        " summary ``ipfw''");
  }

 }

 if (cmd == ((void*)0) && ac != optind + 1)
  errx(EX_USAGE, "extraneous filename arguments %s", av[ac-1]);

 if ((f = fopen(filename, "r")) == ((void*)0))
  err(EX_UNAVAILABLE, "fopen: %s", filename);

 if (cmd != ((void*)0)) {
  int pipedes[2];

  if (pipe(pipedes) == -1)
   err(EX_OSERR, "cannot create pipe");

  preproc = fork();
  if (preproc == -1)
   err(EX_OSERR, "cannot fork");

  if (preproc == 0) {




   if (dup2(fileno(f), 0) == -1
       || dup2(pipedes[1], 1) == -1)
    err(EX_OSERR, "dup2()");
   fclose(f);
   close(pipedes[1]);
   close(pipedes[0]);
   execvp(cmd, av);
   err(EX_OSERR, "execvp(%s) failed", cmd);
  } else {
   fclose(f);
   close(pipedes[1]);
   if ((f = fdopen(pipedes[0], "r")) == ((void*)0)) {
    int savederrno = errno;

    (void)kill(preproc, SIGTERM);
    errno = savederrno;
    err(EX_OSERR, "fdopen()");
   }
  }
 }

 while (fgets(buf, sizeof(buf), f)) {
  char linename[20];
  char *args[2];

  lineno++;
  snprintf(linename, sizeof(linename), "Line %d", lineno);
  setprogname(linename);
  args[0] = progname;
  args[1] = buf;
  ipfw_main(2, args);
 }
 fclose(f);
 if (cmd != ((void*)0)) {
  int status;

  if (waitpid(preproc, &status, 0) == -1)
   errx(EX_OSERR, "waitpid()");
  if (WIFEXITED(status) && WEXITSTATUS(status) != EX_OK)
   errx(EX_UNAVAILABLE,
       "preprocessor exited with status %d",
       WEXITSTATUS(status));
  else if (WIFSIGNALED(status))
   errx(EX_UNAVAILABLE,
       "preprocessor exited with signal %d",
       WTERMSIG(status));
 }
}
