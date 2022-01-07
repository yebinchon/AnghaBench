
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_base ;
 int event_base_priority_init (int ,int) ;

int
event_priority_init(int npriorities)
{
  return event_base_priority_init(current_base, npriorities);
}
