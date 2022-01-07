
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sae_password_entry {scalar_t__ identifier; struct sae_password_entry* next; } ;
struct TYPE_2__ {scalar_t__ wpa_passphrase; } ;
struct hostapd_bss_config {struct sae_password_entry* sae_passwords; TYPE_1__ ssid; } ;



int hostapd_sae_pw_id_in_use(struct hostapd_bss_config *conf)
{
 int with_id = 0, without_id = 0;
 struct sae_password_entry *pw;

 if (conf->ssid.wpa_passphrase)
  without_id = 1;

 for (pw = conf->sae_passwords; pw; pw = pw->next) {
  if (pw->identifier)
   with_id = 1;
  else
   without_id = 1;
  if (with_id && without_id)
   break;
 }

 if (with_id && !without_id)
  return 2;
 return with_id;
}
