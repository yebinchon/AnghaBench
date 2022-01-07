
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_cred {int required_roaming_consortium_len; int required_roaming_consortium; } ;
struct wpa_bss {TYPE_1__* anqp; } ;
struct TYPE_2__ {int * roaming_consortium; } ;


 int WLAN_EID_ROAMING_CONSORTIUM ;
 int roaming_consortium_match (int const*,int *,int ,int ) ;
 int * wpa_bss_get_ie (struct wpa_bss*,int ) ;

__attribute__((used)) static int cred_no_required_oi_match(struct wpa_cred *cred, struct wpa_bss *bss)
{
 const u8 *ie;

 if (cred->required_roaming_consortium_len == 0)
  return 0;

 ie = wpa_bss_get_ie(bss, WLAN_EID_ROAMING_CONSORTIUM);

 if (ie == ((void*)0) &&
     (bss->anqp == ((void*)0) || bss->anqp->roaming_consortium == ((void*)0)))
  return 1;

 return !roaming_consortium_match(ie,
      bss->anqp ?
      bss->anqp->roaming_consortium : ((void*)0),
      cred->required_roaming_consortium,
      cred->required_roaming_consortium_len);
}
