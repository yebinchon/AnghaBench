
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wsc_registrar ;
typedef int wsc_enrollee ;
typedef int u8 ;
typedef struct hostapd_eap_user {int phase2; size_t identity_len; struct hostapd_eap_user const* next; int const* identity; scalar_t__ wildcard_prefix; int password_len; int * password; TYPE_1__* methods; } const hostapd_eap_user ;
struct hostapd_data {struct hostapd_bss_config* conf; } ;
struct hostapd_bss_config {scalar_t__ eap_user_sqlite; scalar_t__ ap_pin; scalar_t__ wps_state; struct hostapd_eap_user const* eap_user; } ;
struct TYPE_2__ {int vendor; void* method; } ;


 int const* WSC_ID_ENROLLEE ;
 size_t WSC_ID_ENROLLEE_LEN ;
 int const* WSC_ID_REGISTRAR ;
 size_t WSC_ID_REGISTRAR_LEN ;
 void* eap_server_get_type (char*,int *) ;
 struct hostapd_eap_user const* eap_user_sqlite_get (struct hostapd_data*,int const*,size_t,int) ;
 scalar_t__ os_memcmp (int const*,int const*,size_t) ;
 int os_memset (struct hostapd_eap_user const*,int ,int) ;
 int os_strlen (scalar_t__) ;

const struct hostapd_eap_user *
hostapd_get_eap_user(struct hostapd_data *hapd, const u8 *identity,
       size_t identity_len, int phase2)
{
 const struct hostapd_bss_config *conf = hapd->conf;
 struct hostapd_eap_user *user = conf->eap_user;
 while (user) {
  if (!phase2 && user->identity == ((void*)0)) {

   break;
  }

  if (user->phase2 == !!phase2 && user->wildcard_prefix &&
      identity_len >= user->identity_len &&
      os_memcmp(user->identity, identity, user->identity_len) ==
      0) {

   break;
  }

  if (user->phase2 == !!phase2 &&
      user->identity_len == identity_len &&
      os_memcmp(user->identity, identity, identity_len) == 0)
   break;
  user = user->next;
 }
 return user;
}
