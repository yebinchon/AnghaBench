
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp_configuration {scalar_t__ ssid_len; int passphrase; int akm; int psk_set; } ;


 scalar_t__ dpp_akm_psk (int ) ;
 scalar_t__ dpp_akm_sae (int ) ;

int dpp_configuration_valid(const struct dpp_configuration *conf)
{
 if (conf->ssid_len == 0)
  return 0;
 if (dpp_akm_psk(conf->akm) && !conf->passphrase && !conf->psk_set)
  return 0;
 if (dpp_akm_sae(conf->akm) && !conf->passphrase)
  return 0;
 return 1;
}
