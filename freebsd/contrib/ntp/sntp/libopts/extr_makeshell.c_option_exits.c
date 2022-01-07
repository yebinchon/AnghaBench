
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 scalar_t__ print_exit ;
 int printf (char*,int) ;

void
option_exits(int exit_code)
{
    if (print_exit)
        printf("\nexit %d\n", exit_code);
    exit(exit_code);
}
