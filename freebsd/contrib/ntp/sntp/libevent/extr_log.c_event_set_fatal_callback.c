
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int event_fatal_cb ;


 int fatal_fn ;

void
event_set_fatal_callback(event_fatal_cb cb)
{
 fatal_fn = cb;
}
