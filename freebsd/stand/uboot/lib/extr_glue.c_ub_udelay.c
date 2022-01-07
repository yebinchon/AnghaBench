
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int API_UDELAY ;
 int syscall (int ,int *,unsigned long*) ;

void
ub_udelay(unsigned long usec)
{

 syscall(API_UDELAY, ((void*)0), &usec);
}
