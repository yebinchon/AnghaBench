
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * parts; } ;


 int NDOSPART ;
 TYPE_1__ mboot ;
 int print_params () ;
 int print_part (int *) ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_s0(void)
{
 int i;

 print_params();
 printf("Information from DOS bootblock is:\n");
 for (i = 1; i <= NDOSPART; i++) {
  printf("%d: ", i);
  print_part(&mboot.parts[i - 1]);
 }
}
