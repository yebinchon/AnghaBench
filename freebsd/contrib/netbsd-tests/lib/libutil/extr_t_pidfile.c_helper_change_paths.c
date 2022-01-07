
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int check_pidfile (char*) ;
 int ensure_deleted (char*) ;
 int errx (int ,char*) ;
 int exit (int ) ;
 int pidfile (char*) ;

__attribute__((used)) static void
helper_change_paths(const char *unused_cookie)
{

 if (pidfile("./var/run/first.pid") == -1)
  errx(EXIT_FAILURE, "Failed to create pidfile "
      "'./var/run/first.pid'");
 check_pidfile("./var/run/first.pid");

 if (pidfile("./second.pid") == -1)
  errx(EXIT_FAILURE, "Failed to create pidfile 'second.pid'");
 ensure_deleted("./var/run/first.pid");
 check_pidfile("./second.pid");

 exit(EXIT_SUCCESS);
}
