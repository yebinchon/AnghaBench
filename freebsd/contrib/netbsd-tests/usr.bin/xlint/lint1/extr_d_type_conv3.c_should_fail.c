
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int f (int) ;

void
should_fail()
{

 f(0x7fffffffffffffffLL);
}
