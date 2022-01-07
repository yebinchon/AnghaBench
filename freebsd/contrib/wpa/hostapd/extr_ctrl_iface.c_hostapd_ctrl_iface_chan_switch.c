
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_iface {unsigned int num_bss; int * bss; } ;
struct TYPE_2__ {int vht_enabled; } ;
struct csa_settings {TYPE_1__ freq_params; } ;


 int hostapd_chan_switch_vht_config (int ,int ) ;
 int hostapd_parse_csa_settings (char*,struct csa_settings*) ;
 int hostapd_switch_channel (int ,struct csa_settings*) ;

__attribute__((used)) static int hostapd_ctrl_iface_chan_switch(struct hostapd_iface *iface,
       char *pos)
{
 return -1;

}
