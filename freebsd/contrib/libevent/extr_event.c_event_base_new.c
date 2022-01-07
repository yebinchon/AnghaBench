
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_config {int dummy; } ;
struct event_base {int dummy; } ;


 struct event_base* event_base_new_with_config (struct event_config*) ;
 int event_config_free (struct event_config*) ;
 struct event_config* event_config_new () ;

struct event_base *
event_base_new(void)
{
 struct event_base *base = ((void*)0);
 struct event_config *cfg = event_config_new();
 if (cfg) {
  base = event_base_new_with_config(cfg);
  event_config_free(cfg);
 }
 return base;
}
