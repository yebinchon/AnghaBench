
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_uid; int pw_gid; int pw_dir; } ;
typedef int gid_t ;


 int AF_LOCAL ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int LOG_NOTICE ;
 int NSIG ;
 int O_APPEND ;
 int O_CREAT ;
 int O_NOFOLLOW ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int PF_UNSPEC ;



 int SIGALRM ;
 int SIGCHLD ;
 int SIGHUP ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGTERM ;
 int SIG_DFL ;
 int SOCK_STREAM ;
 int _NSIG ;
 int _exit (int) ;
 scalar_t__ chdir (char*) ;
 scalar_t__ child_pid ;
 scalar_t__ chroot (int ) ;
 int close (int) ;
 int endpwent () ;
 int err (int,char*) ;
 int errno ;
 int errx (int,char*) ;
 int filename ;
 scalar_t__ fork () ;
 struct passwd* getpwnam (char*) ;
 int gotsig_chld ;
 int logmsg (int ,char*,...) ;
 scalar_t__ may_read (int,int*,int) ;
 int move_log (int ) ;
 int must_read (int,int*,int) ;
 int must_write (int,int*,int) ;
 int open (int ,int,int) ;
 int priv_fd ;
 int send_fd (int,int) ;
 int set_snaplen (int) ;
 int setgroups (int,int *) ;
 int setproctitle (char*) ;
 int setresgid (int ,int ,int ) ;
 int setresuid (int ,int ,int ) ;
 int sig_chld ;
 int sig_pass_to_chld ;
 int signal (int,int ) ;
 int socketpair (int ,int ,int ,int*) ;
 int strerror (int) ;

int
priv_init(void)
{
 int i, fd, socks[2], cmd;
 int snaplen, ret, olderrno;
 struct passwd *pw;




 for (i = 1; i < _NSIG; i++)

  signal(i, SIG_DFL);


 if (socketpair(AF_LOCAL, SOCK_STREAM, PF_UNSPEC, socks) == -1)
  err(1, "socketpair() failed");

 pw = getpwnam("_pflogd");
 if (pw == ((void*)0))
  errx(1, "unknown user _pflogd");
 endpwent();

 child_pid = fork();
 if (child_pid < 0)
  err(1, "fork() failed");

 if (!child_pid) {
  gid_t gidset[1];


  if (chroot(pw->pw_dir) != 0)
   err(1, "unable to chroot");
  if (chdir("/") != 0)
   err(1, "unable to chdir");

  gidset[0] = pw->pw_gid;
  if (setresgid(pw->pw_gid, pw->pw_gid, pw->pw_gid) == -1)
   err(1, "setresgid() failed");
  if (setgroups(1, gidset) == -1)
   err(1, "setgroups() failed");
  if (setresuid(pw->pw_uid, pw->pw_uid, pw->pw_uid) == -1)
   err(1, "setresuid() failed");
  close(socks[0]);
  priv_fd = socks[1];
  return 0;
 }



 signal(SIGALRM, sig_pass_to_chld);
 signal(SIGTERM, sig_pass_to_chld);
 signal(SIGHUP, sig_pass_to_chld);
 signal(SIGINT, sig_pass_to_chld);
 signal(SIGQUIT, sig_pass_to_chld);
 signal(SIGCHLD, sig_chld);

 setproctitle("[priv]");
 close(socks[1]);

 while (!gotsig_chld) {
  if (may_read(socks[0], &cmd, sizeof(int)))
   break;
  switch (cmd) {
  case 128:
   logmsg(LOG_DEBUG,
       "[priv]: msg PRIV_SET_SNAPLENGTH received");
   must_read(socks[0], &snaplen, sizeof(int));

   ret = set_snaplen(snaplen);
   if (ret) {
    logmsg(LOG_NOTICE,
       "[priv]: set_snaplen failed for snaplen %d",
       snaplen);
   }

   must_write(socks[0], &ret, sizeof(int));
   break;

  case 129:
   logmsg(LOG_DEBUG,
       "[priv]: msg PRIV_OPEN_LOG received");

   fd = open(filename,
       O_RDWR|O_CREAT|O_APPEND|O_NONBLOCK|O_NOFOLLOW,
       0600);
   olderrno = errno;
   send_fd(socks[0], fd);
   if (fd < 0)
    logmsg(LOG_NOTICE,
        "[priv]: failed to open %s: %s",
        filename, strerror(olderrno));
   else
    close(fd);
   break;

  case 130:
   logmsg(LOG_DEBUG,
       "[priv]: msg PRIV_MOVE_LOG received");
   ret = move_log(filename);
   must_write(socks[0], &ret, sizeof(int));
   break;

  default:
   logmsg(LOG_ERR, "[priv]: unknown command %d", cmd);
   _exit(1);

  }
 }

 _exit(1);
}
