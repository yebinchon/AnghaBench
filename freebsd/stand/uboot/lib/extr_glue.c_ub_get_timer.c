
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int API_GET_TIMER ;
 int syscall (int ,int *,unsigned long*,unsigned long*) ;

unsigned long
ub_get_timer(unsigned long base)
{
 unsigned long cur;

 if (!syscall(API_GET_TIMER, ((void*)0), &cur, &base))
  return (0);

 return (cur);
}
