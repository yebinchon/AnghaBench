
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,int) ;
 int test_num ;

__attribute__((used)) static void
pass(void)
{

 printf("ok %d\n", test_num);
 test_num++;
}
