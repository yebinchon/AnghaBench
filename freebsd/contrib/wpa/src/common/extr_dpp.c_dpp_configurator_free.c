
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp_configurator {struct dpp_configurator* kid; int csign; } ;


 int EVP_PKEY_free (int ) ;
 int os_free (struct dpp_configurator*) ;

void dpp_configurator_free(struct dpp_configurator *conf)
{
 if (!conf)
  return;
 EVP_PKEY_free(conf->csign);
 os_free(conf->kid);
 os_free(conf);
}
