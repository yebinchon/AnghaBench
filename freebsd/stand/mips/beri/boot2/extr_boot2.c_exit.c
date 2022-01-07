
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __unreachable () ;
 int printf (char*) ;

void
exit(int code)
{

        printf("error: loader exit\n");
        while (1);
        __unreachable();
}
