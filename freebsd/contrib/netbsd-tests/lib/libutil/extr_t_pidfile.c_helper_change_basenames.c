
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
helper_change_basenames(const char *unused_cookie)
{
 char *default_path;
 char *custom_path;

 default_path = generate_varrun_pidfile(((void*)0));
 if (pidfile(((void*)0)) == -1)
  errx(EXIT_FAILURE, "Failed to create pidfile with default "
      "basename");
 check_pidfile(default_path);
 if (pidfile(((void*)0)) == -1)
  errx(EXIT_FAILURE, "Failed to recreate pidfile with default "
      "basename");
 check_pidfile(default_path);

 custom_path = generate_varrun_pidfile("custom-basename");
 if (pidfile("custom-basename") == -1)
  errx(EXIT_FAILURE, "Failed to create pidfile with custom "
      "basename");
 ensure_deleted(default_path);
 check_pidfile(custom_path);
 if (pidfile("custom-basename") == -1)
  errx(EXIT_FAILURE, "Failed to recreate pidfile with custom "
      "basename");
 check_pidfile(custom_path);

 free(custom_path);
 free(default_path);
 exit(EXIT_SUCCESS);
}
