
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int dummy; } ;
struct wpa_cred {int const max_bss_load; } ;
struct wpa_bss {TYPE_1__* anqp; } ;
struct TYPE_2__ {int * domain_name; } ;


 int WLAN_EID_BSS_LOAD ;
 int interworking_home_sp_cred (struct wpa_supplicant*,struct wpa_cred*,int *) ;
 int* wpa_bss_get_ie (struct wpa_bss*,int ) ;

__attribute__((used)) static int cred_over_max_bss_load(struct wpa_supplicant *wpa_s,
      struct wpa_cred *cred, struct wpa_bss *bss)
{
 const u8 *ie;
 int res;

 if (!cred->max_bss_load)
  return 0;

 ie = wpa_bss_get_ie(bss, WLAN_EID_BSS_LOAD);
 if (ie == ((void*)0) || ie[1] < 3)
  return 0;

 res = interworking_home_sp_cred(wpa_s, cred, bss->anqp ?
     bss->anqp->domain_name : ((void*)0));
 if (res <= 0)
  return 0;

 return ie[4] > cred->max_bss_load;
}
