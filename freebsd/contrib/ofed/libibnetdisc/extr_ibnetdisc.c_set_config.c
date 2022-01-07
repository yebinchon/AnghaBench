
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibnd_config {scalar_t__ retries; scalar_t__ timeout_ms; scalar_t__ max_smps; } ;


 scalar_t__ DEFAULT_MAX_SMP_ON_WIRE ;
 scalar_t__ DEFAULT_RETRIES ;
 scalar_t__ DEFAULT_TIMEOUT ;
 int EINVAL ;
 int memcpy (struct ibnd_config*,struct ibnd_config*,int) ;

__attribute__((used)) static int set_config(struct ibnd_config *config, struct ibnd_config *cfg)
{
 if (!config)
  return (-EINVAL);

 if (cfg)
  memcpy(config, cfg, sizeof(*config));

 if (!config->max_smps)
  config->max_smps = DEFAULT_MAX_SMP_ON_WIRE;
 if (!config->timeout_ms)
  config->timeout_ms = DEFAULT_TIMEOUT;
 if (!config->retries)
  config->retries = DEFAULT_RETRIES;

 return (0);
}
