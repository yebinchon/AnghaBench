
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _gr_stayopen ;
 int start_gr () ;

int
_setgroupent(int stayopen)
{
 if (!start_gr())
  return(0);
 _gr_stayopen = stayopen;
 return(1);
}
