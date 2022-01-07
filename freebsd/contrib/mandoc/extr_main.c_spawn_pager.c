
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int member_1; int member_0; } ;
struct tag_files {char* tfn; char* tagname; char* ofn; int tfd; int ofd; int pager_pid; } ;
typedef int pid_t ;


 int MANDOCERR_DUP ;
 int MANDOCERR_EXEC ;
 int MANDOCERR_FORK ;
 int MANDOCERR_PLEDGE ;
 int MAX_PAGER_ARGS ;
 int STDOUT_FILENO ;
 int _exit (int ) ;
 int assert (int) ;
 int close (int ) ;
 int dup2 (int ,int ) ;
 int errno ;
 int execvp (char*,char**) ;
 int exit (int ) ;
 int fork () ;
 char* getenv (char*) ;
 scalar_t__ getpid () ;
 int mandoc_msg (int ,int ,int ,char*,char*,...) ;
 int mandoc_msg_getrc () ;
 char* mandoc_strdup (char const*) ;
 int nanosleep (struct timespec const*,int *) ;
 int pledge (char*,int *) ;
 int setpgid (int ,int ) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strerror (int ) ;
 size_t strlen (char*) ;
 scalar_t__ tcgetpgrp (int ) ;
 int tcsetpgrp (int ,int ) ;

__attribute__((used)) static pid_t
spawn_pager(struct tag_files *tag_files)
{
 const struct timespec timeout = { 0, 100000000 };

 char *argv[16];
 const char *pager;
 char *cp;



 int argc, use_ofn;
 pid_t pager_pid;

 pager = getenv("MANPAGER");
 if (pager == ((void*)0) || *pager == '\0')
  pager = getenv("PAGER");
 if (pager == ((void*)0) || *pager == '\0')
  pager = "less -s";
 cp = mandoc_strdup(pager);






 argc = 0;
 while (argc + 5 < 16) {
  argv[argc++] = cp;
  cp = strchr(cp, ' ');
  if (cp == ((void*)0))
   break;
  *cp++ = '\0';
  while (*cp == ' ')
   cp++;
  if (*cp == '\0')
   break;
 }



 use_ofn = 1;
 if (use_ofn)
  argv[argc++] = tag_files->ofn;
 argv[argc] = ((void*)0);

 switch (pager_pid = fork()) {
 case -1:
  mandoc_msg(MANDOCERR_FORK, 0, 0, "%s", strerror(errno));
  exit(mandoc_msg_getrc());
 case 0:
  break;
 default:
  (void)setpgid(pager_pid, 0);
  (void)tcsetpgrp(tag_files->ofd, pager_pid);







  tag_files->pager_pid = pager_pid;
  return pager_pid;
 }



 if (dup2(tag_files->ofd, STDOUT_FILENO) == -1) {
  mandoc_msg(MANDOCERR_DUP, 0, 0, "%s", strerror(errno));
  _exit(mandoc_msg_getrc());
 }
 close(tag_files->ofd);
 assert(tag_files->tfd == -1);



 while (tcgetpgrp(STDOUT_FILENO) != getpid())
  nanosleep(&timeout, ((void*)0));

 execvp(argv[0], argv);
 mandoc_msg(MANDOCERR_EXEC, 0, 0, "%s: %s", argv[0], strerror(errno));
 _exit(mandoc_msg_getrc());
}
