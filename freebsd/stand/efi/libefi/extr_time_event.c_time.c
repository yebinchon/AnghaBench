
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int curtime ;

time_t
time(time_t *tloc)
{
 time_t t;

 t = curtime / 1000;
 if (tloc != ((void*)0))
  *tloc = t;

 return (t);
}
