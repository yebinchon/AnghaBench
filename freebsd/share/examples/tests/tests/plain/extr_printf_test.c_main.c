
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 int fprintf__simple_string () ;
 int snprintf__overflow () ;
 int snprintf__two_formatters () ;

int
main(void)
{
 snprintf__two_formatters();
 snprintf__overflow();
 fprintf__simple_string();

 return EXIT_SUCCESS;
}
