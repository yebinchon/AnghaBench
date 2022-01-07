
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct wpa_supplicant {char* imsi; int mnc_len; scalar_t__ scard; } ;
struct wpa_cred {char* imsi; char** domain; size_t num_domain; scalar_t__ pcsc; } ;
typedef int nai ;


 int MSG_DEBUG ;
 scalar_t__ build_root_nai (char*,int,char*,int,int ) ;
 scalar_t__ domain_name_list_contains (struct wpabuf*,char*,int) ;
 scalar_t__ interworking_pcsc_read_imsi (struct wpa_supplicant*) ;
 char* os_strchr (char*,char) ;
 int wpa_msg (struct wpa_supplicant*,int ,char*,char*) ;

int interworking_home_sp_cred(struct wpa_supplicant *wpa_s,
         struct wpa_cred *cred,
         struct wpabuf *domain_names)
{
 size_t i;
 int ret = -1;
 if (domain_names == ((void*)0) || cred->domain == ((void*)0))
  return ret;

 for (i = 0; i < cred->num_domain; i++) {
  wpa_msg(wpa_s, MSG_DEBUG,
   "Interworking: Search for match with home SP FQDN %s",
   cred->domain[i]);
  if (domain_name_list_contains(domain_names, cred->domain[i], 1))
   return 1;
 }

 return 0;
}
