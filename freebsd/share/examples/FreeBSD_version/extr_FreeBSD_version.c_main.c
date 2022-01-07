
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __FreeBSD_version ;
 int getosreldate () ;
 int printf (char*,...) ;

int
main(void) {
 printf("Compilation release date: %d\n", __FreeBSD_version);



 printf("Execution environment release date: can't tell\n");

 return (0);
}
