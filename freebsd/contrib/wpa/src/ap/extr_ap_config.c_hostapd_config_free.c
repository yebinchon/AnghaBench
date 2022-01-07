
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct hostapd_config* range; } ;
struct hostapd_config {size_t num_bss; int civic; int lci; struct hostapd_config* acs_chan_bias; struct hostapd_config* driver_params; TYPE_1__ acs_ch_list; struct hostapd_config* basic_rates; struct hostapd_config* supported_rates; struct hostapd_config* bss; } ;


 int hostapd_config_free_bss (struct hostapd_config) ;
 int os_free (struct hostapd_config*) ;
 int wpabuf_free (int ) ;

void hostapd_config_free(struct hostapd_config *conf)
{
 size_t i;

 if (conf == ((void*)0))
  return;

 for (i = 0; i < conf->num_bss; i++)
  hostapd_config_free_bss(conf->bss[i]);
 os_free(conf->bss);
 os_free(conf->supported_rates);
 os_free(conf->basic_rates);
 os_free(conf->acs_ch_list.range);
 os_free(conf->driver_params);



 wpabuf_free(conf->lci);
 wpabuf_free(conf->civic);

 os_free(conf);
}
