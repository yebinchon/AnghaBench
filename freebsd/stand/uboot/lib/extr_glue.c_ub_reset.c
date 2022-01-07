
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int API_RESET ;
 int __unreachable () ;
 int syscall (int ,int *) ;

void
ub_reset(void)
{

 syscall(API_RESET, ((void*)0));
 while (1);
 __unreachable();
}
