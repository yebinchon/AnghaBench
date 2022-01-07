
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sourcedesc ;
 scalar_t__ sourceptr ;

close (int desc)
{
  sourceptr = 0;
  sourcedesc++;

  if (sourcedesc == 100)
    sourcedesc = 5;
}
