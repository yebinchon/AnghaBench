
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int check_pidfile (char const*) ;
 int errx (int ,char*) ;
 int exit (int ) ;
 int pidfile (int *) ;

__attribute__((used)) static void
helper_default_path(const char *path)
{

 if (pidfile(((void*)0)) == -1)
  errx(EXIT_FAILURE, "Failed to create pidfile with default "
      "basename");

 check_pidfile(path);
 exit(EXIT_SUCCESS);
}
