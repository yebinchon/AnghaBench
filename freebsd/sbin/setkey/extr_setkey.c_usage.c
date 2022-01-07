
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*) ;

void
usage()
{

 printf("usage: setkey [-v] -c\n");
 printf("       setkey [-v] -f filename\n");
 printf("       setkey [-Pagltv] -D\n");
 printf("       setkey [-Pv] -F\n");
 printf("       setkey [-h] -x\n");
 exit(1);
}
