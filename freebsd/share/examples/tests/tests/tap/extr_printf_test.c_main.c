
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_COUNT ;
 int failed ;
 int fprintf__simple_string () ;
 int printf (char*,int) ;
 int snprintf__overflow () ;
 int snprintf__two_formatters () ;

int
main(void)
{
 printf("1..%d\n", TEST_COUNT);

 snprintf__two_formatters();
 snprintf__overflow();
 fprintf__simple_string();

 return (failed);
}
