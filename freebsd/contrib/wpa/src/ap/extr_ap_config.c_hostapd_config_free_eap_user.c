
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_eap_user {int salt_len; int salt; int password_len; int password; struct hostapd_eap_user* identity; int accept_attr; } ;


 int bin_clear_free (int ,int ) ;
 int hostapd_config_free_radius_attr (int ) ;
 int os_free (struct hostapd_eap_user*) ;

void hostapd_config_free_eap_user(struct hostapd_eap_user *user)
{
 hostapd_config_free_radius_attr(user->accept_attr);
 os_free(user->identity);
 bin_clear_free(user->password, user->password_len);
 bin_clear_free(user->salt, user->salt_len);
 os_free(user);
}
