
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_he_capabilities {int dummy; } ;
struct hostapd_data {int dummy; } ;


 int os_memcpy (struct ieee80211_he_capabilities*,struct ieee80211_he_capabilities const*,size_t) ;

void hostapd_get_he_capab(struct hostapd_data *hapd,
     const struct ieee80211_he_capabilities *he_cap,
     struct ieee80211_he_capabilities *neg_he_cap,
     size_t he_capab_len)
{
 if (!he_cap)
  return;

 if (he_capab_len > sizeof(*neg_he_cap))
  he_capab_len = sizeof(*neg_he_cap);


 os_memcpy(neg_he_cap, he_cap, he_capab_len);
}
