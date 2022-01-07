
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* PATH_LOADER ;
 char* bootpath ;
 int domount (char*) ;
 int load (char const*) ;
 int loadzfs () ;
 int panic (char*) ;
 int printf (char*,char*,...) ;
 int usage () ;

int
main(int ac, char **av)
{
 const char *path;
 int i;

 path = PATH_LOADER;
 for (i = 0; i < ac; i++) {
  switch (av[i][0]) {
  case '-':
   switch (av[i][1]) {
   default:
    usage();
   }
   break;
  default:
   path = av[i];
   break;
  }
 }





 printf(" \n>> FreeBSD/sparc64 boot block\n   Boot path:   %s\n"
     "   Boot loader: %s\n", bootpath, path);


 if (domount(bootpath) == -1)
  panic("domount");




 load(path);

 return (1);
}
