
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tv_sec; } ;
struct event_config {int limit_callbacks_after_prio; int max_dispatch_callbacks; TYPE_1__ max_dispatch_interval; int entries; } ;


 int INT_MAX ;
 int TAILQ_INIT (int *) ;
 struct event_config* mm_calloc (int,int) ;

struct event_config *
event_config_new(void)
{
 struct event_config *cfg = mm_calloc(1, sizeof(*cfg));

 if (cfg == ((void*)0))
  return (((void*)0));

 TAILQ_INIT(&cfg->entries);
 cfg->max_dispatch_interval.tv_sec = -1;
 cfg->max_dispatch_callbacks = INT_MAX;
 cfg->limit_callbacks_after_prio = 1;

 return (cfg);
}
