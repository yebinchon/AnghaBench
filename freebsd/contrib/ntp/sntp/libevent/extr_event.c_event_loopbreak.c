
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_base ;
 int event_base_loopbreak (int ) ;

int
event_loopbreak(void)
{
 return (event_base_loopbreak(current_base));
}
