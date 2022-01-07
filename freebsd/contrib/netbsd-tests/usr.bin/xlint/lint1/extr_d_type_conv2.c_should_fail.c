
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int f (double) ;

void
should_fail()
{
 double x = 2.0;

 f(x);
}
