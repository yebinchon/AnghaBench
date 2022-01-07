
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int API_GETC ;
 int syscall (int ,int *,int*) ;

int
ub_getc(void)
{
 int c;

 if (!syscall(API_GETC, ((void*)0), &c))
  return (-1);

 return (c);
}
