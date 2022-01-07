
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FE_INVALID ;
 int feenableexcept (int ) ;
 int printf (char*) ;
 int testnan (char*) ;

int
main(void)
{

 printf("1..1\n");


 feenableexcept(FE_INVALID);

 testnan("0x1234");
 testnan("");

 printf("ok 1 - nan\n");

 return (0);
}
