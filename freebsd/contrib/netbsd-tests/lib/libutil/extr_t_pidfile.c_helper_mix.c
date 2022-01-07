
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
 int free (char*) ;
 char* generate_varrun_pidfile (char*) ;
 int pidfile (char*) ;

__attribute__((used)) static void
helper_mix(const char *unused_cookie)
{
 char *default_path;
 char *custom_path;

 default_path = generate_varrun_pidfile(((void*)0));
 custom_path = generate_varrun_pidfile("custom-basename");

 if (pidfile(((void*)0)) == -1)
  errx(EXIT_FAILURE, "Failed to create default pidfile");
 check_pidfile(default_path);

 if (pidfile("./second.pid") == -1)
  errx(EXIT_FAILURE, "Failed to create pidfile 'second.pid'");
 ensure_deleted(default_path);
 check_pidfile("./second.pid");

 if (pidfile("custom-basename") == -1)
  errx(EXIT_FAILURE, "Failed to create pidfile 'second.pid'");
 ensure_deleted(default_path);
 ensure_deleted("./second.pid");
 ensure_deleted("./custom-basename");
 check_pidfile(custom_path);

 free(custom_path);
 free(default_path);
 exit(EXIT_SUCCESS);
}
