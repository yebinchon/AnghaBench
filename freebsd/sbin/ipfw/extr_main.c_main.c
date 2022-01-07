
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WSADATA ;


 int EX_OK ;
 int EX_USAGE ;
 unsigned short MAKEWORD (int,int) ;
 int R_OK ;
 int WSAStartup (unsigned short,int *) ;
 scalar_t__ access (char*,int ) ;
 int err (int ,char*,char*) ;
 int errx (int ,char*) ;
 scalar_t__ ipfw_main (int,char**) ;
 int ipfw_readfile (int,char**) ;
 int printf (char*,int) ;

int
main(int ac, char *av[])
{
 if (ac > 1 && av[ac - 1][0] == '/') {
  if (access(av[ac - 1], R_OK) == 0)
   ipfw_readfile(ac, av);
  else
   err(EX_USAGE, "pathname: %s", av[ac - 1]);
 } else {
  if (ipfw_main(ac, av)) {
   errx(EX_USAGE,
       "usage: ipfw [options]\n"
       "do \"ipfw -h\" or \"man ipfw\" for details");
  }
 }
 return EX_OK;
}
