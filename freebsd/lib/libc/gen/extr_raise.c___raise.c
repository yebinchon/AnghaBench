
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __sys_thr_kill (long,int) ;
 int __sys_thr_self (long*) ;

int
__raise(int s)
{
 long id;

 if (__sys_thr_self(&id) == -1)
  return (-1);
 return (__sys_thr_kill(id, s));
}
