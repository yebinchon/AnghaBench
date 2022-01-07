
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int API_PUTC ;
 int syscall (int ,int *,char const*) ;

void
ub_putc(const char c)
{

 syscall(API_PUTC, ((void*)0), &c);
}
