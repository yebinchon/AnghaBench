
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_eap_user {struct hostapd_eap_user* next; } ;


 int hostapd_config_free_eap_user (struct hostapd_eap_user*) ;

void hostapd_config_free_eap_users(struct hostapd_eap_user *user)
{
 struct hostapd_eap_user *prev_user;

 while (user) {
  prev_user = user;
  user = user->next;
  hostapd_config_free_eap_user(prev_user);
 }
}
