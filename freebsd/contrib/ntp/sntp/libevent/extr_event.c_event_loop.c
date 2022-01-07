
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_base ;
 int event_base_loop (int ,int) ;

int
event_loop(int flags)
{
 return event_base_loop(current_base, flags);
}
