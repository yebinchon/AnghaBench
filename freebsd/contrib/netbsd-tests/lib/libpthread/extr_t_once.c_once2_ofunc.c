
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,int) ;
 int x ;

__attribute__((used)) static void
once2_ofunc(void)
{
 x++;
 printf("ofunc: Variable x has value %d\n", x);
 x++;
}
