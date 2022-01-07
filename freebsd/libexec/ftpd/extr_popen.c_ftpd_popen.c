
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int gl_matchc; scalar_t__ gl_pathc; char** gl_pathv; } ;
typedef TYPE_1__ glob_t ;
typedef int gl ;
typedef int FILE ;


 int GLOB_BRACE ;
 int GLOB_LIMIT ;
 int GLOB_NOCHECK ;
 int GLOB_TILDE ;
 int MAXGLOBARGS ;
 int MAXUSRARGS ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int _PATH_LS ;
 int _exit (int) ;
 int* calloc (int ,int) ;
 int close (int) ;
 int closelog () ;
 int dup2 (int,int) ;
 int execv (char*,char**) ;
 int exit (int ) ;
 int * fdopen (int,char*) ;
 int fds ;
 int fflush (int *) ;
 size_t fileno (int *) ;
 int fork () ;
 int free (char*) ;
 int getdtablesize () ;
 int * getenv (char*) ;
 int geteuid () ;
 int getuid () ;
 scalar_t__ glob (char*,int,int *,TYPE_1__*) ;
 int globfree (TYPE_1__*) ;
 int ls_main (int,char**) ;
 int memset (TYPE_1__*,int ,int) ;
 int optind ;
 int optopt ;
 int optreset ;
 int* pids ;
 scalar_t__ pipe (int*) ;
 int setenv (char*,char*,int ) ;
 int setuid (int ) ;
 scalar_t__ strcmp (char*,int ) ;
 char* strdup (char*) ;
 char* strtok (char*,char*) ;
 int tzset () ;
 int unsetenv (char*) ;
 int vfork () ;

FILE *
ftpd_popen(char *program, char *type)
{
 char *cp;
 FILE *iop;
 int argc, gargc, pdes[2], pid;
 char **pop, *argv[MAXUSRARGS], *gargv[MAXGLOBARGS];

 if (((*type != 'r') && (*type != 'w')) || type[1])
  return (((void*)0));

 if (!pids) {
  if ((fds = getdtablesize()) <= 0)
   return (((void*)0));
  if ((pids = calloc(fds, sizeof(int))) == ((void*)0))
   return (((void*)0));
 }
 if (pipe(pdes) < 0)
  return (((void*)0));


 for (argc = 0, cp = program; argc < MAXUSRARGS; cp = ((void*)0)) {
  if (!(argv[argc++] = strtok(cp, " \t\n")))
   break;
 }
 argv[argc - 1] = ((void*)0);


 gargv[0] = argv[0];
 for (gargc = argc = 1; argv[argc] && gargc < (MAXGLOBARGS-1); argc++) {
  glob_t gl;
  int flags = GLOB_BRACE|GLOB_NOCHECK|GLOB_TILDE;

  memset(&gl, 0, sizeof(gl));
  gl.gl_matchc = MAXGLOBARGS;
  flags |= GLOB_LIMIT;
  if (glob(argv[argc], flags, ((void*)0), &gl))
   gargv[gargc++] = strdup(argv[argc]);
  else if (gl.gl_pathc > 0) {
   for (pop = gl.gl_pathv; *pop && gargc < (MAXGLOBARGS-1);
        pop++)
    gargv[gargc++] = strdup(*pop);
  }
  globfree(&gl);
 }
 gargv[gargc] = ((void*)0);

 iop = ((void*)0);
 fflush(((void*)0));
 pid = (strcmp(gargv[0], _PATH_LS) == 0) ? fork() : vfork();
 switch(pid) {
 case -1:
  (void)close(pdes[0]);
  (void)close(pdes[1]);
  goto pfree;

 case 0:
  if (*type == 'r') {
   if (pdes[1] != STDOUT_FILENO) {
    dup2(pdes[1], STDOUT_FILENO);
    (void)close(pdes[1]);
   }
   dup2(STDOUT_FILENO, STDERR_FILENO);
   (void)close(pdes[0]);
  } else {
   if (pdes[0] != STDIN_FILENO) {
    dup2(pdes[0], STDIN_FILENO);
    (void)close(pdes[0]);
   }
   (void)close(pdes[1]);
  }

  if (getuid() != geteuid() && setuid(geteuid()) < 0)
   _exit(1);
  if (strcmp(gargv[0], _PATH_LS) == 0) {

   optreset = optind = optopt = 1;

   closelog();

   if (getenv("TZ") == ((void*)0)) {
    setenv("TZ", "", 0);
    tzset();
    unsetenv("TZ");
    tzset();
   }
   exit(ls_main(gargc, gargv));
  }
  execv(gargv[0], gargv);
  _exit(1);
 }

 if (*type == 'r') {
  iop = fdopen(pdes[0], type);
  (void)close(pdes[1]);
 } else {
  iop = fdopen(pdes[1], type);
  (void)close(pdes[0]);
 }
 pids[fileno(iop)] = pid;

pfree: for (argc = 1; gargv[argc] != ((void*)0); argc++)
  free(gargv[argc]);

 return (iop);
}
