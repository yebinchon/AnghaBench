
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_wep_keys {int ** key; int * len; } ;


 int NUM_WEP_KEYS ;
 int bin_clear_free (int *,int ) ;

__attribute__((used)) static void hostapd_config_free_wep(struct hostapd_wep_keys *keys)
{
 int i;
 for (i = 0; i < NUM_WEP_KEYS; i++) {
  bin_clear_free(keys->key[i], keys->len[i]);
  keys->key[i] = ((void*)0);
 }
}
