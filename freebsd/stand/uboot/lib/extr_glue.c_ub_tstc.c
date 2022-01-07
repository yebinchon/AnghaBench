
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int API_TSTC ;
 int syscall (int ,int *,int*) ;

int
ub_tstc(void)
{
 int t;

 if (!syscall(API_TSTC, ((void*)0), &t))
  return (-1);

 return (t);
}
