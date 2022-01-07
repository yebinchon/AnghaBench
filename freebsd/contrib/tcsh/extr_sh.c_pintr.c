
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int just_signaled ;
 int pintr1 (int) ;

void
pintr(void)
{
    just_signaled = 1;
    pintr1(1);
}
