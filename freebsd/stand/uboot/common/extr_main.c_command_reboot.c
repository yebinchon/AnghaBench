
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __unreachable () ;
 int printf (char*) ;
 int ub_reset () ;

__attribute__((used)) static int
command_reboot(int argc, char *argv[])
{

 printf("Resetting...\n");
 ub_reset();

 printf("Reset failed!\n");
 while (1);
 __unreachable();
}
