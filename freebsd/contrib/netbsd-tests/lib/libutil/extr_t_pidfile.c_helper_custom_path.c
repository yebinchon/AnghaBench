
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int check_pidfile (char const*) ;
 int errx (int ,char*,char const*) ;
 int exit (int ) ;
 int pidfile (char const*) ;

__attribute__((used)) static void
helper_custom_path(const char *path)
{

 if (pidfile(path) == -1)
  errx(EXIT_FAILURE, "Failed to create pidfile '%s'", path);
 check_pidfile(path);
 exit(EXIT_SUCCESS);
}
