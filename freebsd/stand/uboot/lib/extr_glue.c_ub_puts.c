
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int API_PUTS ;
 int syscall (int ,int *,char const*) ;

void
ub_puts(const char *s)
{

 syscall(API_PUTS, ((void*)0), s);
}
