
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int getsecs () ;

time_t
time(time_t *tloc)
{
 time_t rv;

 rv = getsecs();
 if (tloc != ((void*)0))
  *tloc = rv;

 return (rv);
}
