
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int dochdir ;
 int dofchdir ;
 int errx (int,char*) ;
 char* prefix ;
 int prefixlen ;
 int simple () ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 int symlinktest () ;
 int thechdir ;

int
main(int argc, char *argv[])
{

 if (argc != 4)
  errx(1, "usage");

 prefix = argv[1];
 prefixlen = strlen(argv[1]);

 if (strcmp(argv[3], "chdir") == 0)
  thechdir = dochdir;
 else if (strcmp(argv[3], "fchdir") == 0)
  thechdir = dofchdir;
 else
  errx(EXIT_FAILURE, "invalid chdir type");

 if (strcmp(argv[2], "simple") == 0)
  simple();
 if (strcmp(argv[2], "symlink") == 0)
  symlinktest();

 return EXIT_SUCCESS;
}
