
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_config {int n_cpus_hint; } ;



int
event_config_set_num_cpus_hint(struct event_config *cfg, int cpus)
{
 if (!cfg)
  return (-1);
 cfg->n_cpus_hint = cpus;
 return (0);
}
