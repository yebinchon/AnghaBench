
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cap_rights_t ;


 int CAP_WRITE ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int cap_rights_init (int *,...) ;
 scalar_t__ caph_rights_limit (int ,int *) ;
 int close (int) ;
 int daemonfd (int,int) ;
 int error (char*) ;
 scalar_t__ log_perror ;
 scalar_t__ no_daemon ;
 int nullfd ;
 int * pidfile ;
 int pidfile_fileno (int *) ;
 int pidfile_write (int *) ;

void
go_daemon(void)
{
 static int state = 0;
 cap_rights_t rights;

 if (no_daemon || state)
  return;

 state = 1;


 log_perror = 0;

 if (daemonfd(-1, nullfd) == -1)
  error("daemon");

 cap_rights_init(&rights);

 if (pidfile != ((void*)0)) {
  pidfile_write(pidfile);

  if (caph_rights_limit(pidfile_fileno(pidfile), &rights) < 0)
   error("can't limit pidfile descriptor: %m");
 }

 if (nullfd != -1) {
  close(nullfd);
  nullfd = -1;
 }

 if (caph_rights_limit(STDIN_FILENO, &rights) < 0)
  error("can't limit stdin: %m");
 cap_rights_init(&rights, CAP_WRITE);
 if (caph_rights_limit(STDOUT_FILENO, &rights) < 0)
  error("can't limit stdout: %m");
 if (caph_rights_limit(STDERR_FILENO, &rights) < 0)
  error("can't limit stderr: %m");
}
