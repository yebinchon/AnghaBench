
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int event_log_cb ;


 int log_fn ;

void
event_set_log_callback(event_log_cb cb)
{
 log_fn = cb;
}
