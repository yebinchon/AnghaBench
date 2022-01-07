
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* dv_name; } ;


 char* inet_ntoa (int ) ;
 int pager_output (char*) ;
 int printf (char*,char*,...) ;
 int * pxe_call ;
 TYPE_1__ pxedisk ;
 int rootip ;
 char* rootpath ;

__attribute__((used)) static int
pxe_print(int verbose)
{
 if (pxe_call == ((void*)0))
  return (0);

 printf("%s devices:", pxedisk.dv_name);
 if (pager_output("\n") != 0)
  return (1);
 printf("    %s0:", pxedisk.dv_name);
 if (verbose) {
  printf("    %s:%s", inet_ntoa(rootip), rootpath);
 }
 return (pager_output("\n"));
}
