
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evdns_debug_log_fn_type ;


 int evdns_log_fn ;

void
evdns_set_log_fn(evdns_debug_log_fn_type fn)
{
 evdns_log_fn = fn;
}
