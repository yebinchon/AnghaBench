
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char*,char*) ;
 int test_dl_iterate_phdr () ;
 int test_dlclose () ;
 int test_dlopen () ;

int
main(int argc, char **argv)
{
 if (argc != 2)
  return 1;
 if (strcmp(argv[1], "dl_iterate_phdr") == 0)
  test_dl_iterate_phdr();
 if (strcmp(argv[1], "dlopen") == 0)
  test_dlopen();
 if (strcmp(argv[1], "dlclose") == 0)
  test_dlclose();
 return 1;
}
