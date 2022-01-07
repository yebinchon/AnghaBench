
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _gr_stayopen ;
 int grstart () ;

__attribute__((used)) static int
gi_setgroupent(int stayopen)
{

 if (!grstart())
  return 0;
 _gr_stayopen = stayopen;
 return 1;
}
