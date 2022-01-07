
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int dummy; } ;
struct wpa_cred {size_t num_roaming_partner; TYPE_2__* roaming_partner; } ;
struct wpa_bss {TYPE_1__* anqp; } ;
struct TYPE_4__ {int priority; } ;
struct TYPE_3__ {int * domain_name; } ;


 int MSG_DEBUG ;
 scalar_t__ interworking_home_sp_cred (struct wpa_supplicant*,struct wpa_cred*,int *) ;
 scalar_t__ roaming_partner_match (struct wpa_supplicant*,TYPE_2__*,int *) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static u8 roaming_prio(struct wpa_supplicant *wpa_s, struct wpa_cred *cred,
         struct wpa_bss *bss)
{
 size_t i;

 if (bss->anqp == ((void*)0) || bss->anqp->domain_name == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "Interworking: No ANQP domain name info -> use default roaming partner priority 128");
  return 128;
 }

 if (interworking_home_sp_cred(wpa_s, cred, bss->anqp->domain_name) > 0)
 {
  wpa_printf(MSG_DEBUG, "Interworking: Determined to be home SP -> use maximum preference 0 as roaming partner priority");
  return 0;
 }

 for (i = 0; i < cred->num_roaming_partner; i++) {
  if (roaming_partner_match(wpa_s, &cred->roaming_partner[i],
       bss->anqp->domain_name)) {
   wpa_printf(MSG_DEBUG, "Interworking: Roaming partner preference match - priority %u",
       cred->roaming_partner[i].priority);
   return cred->roaming_partner[i].priority;
  }
 }

 wpa_printf(MSG_DEBUG, "Interworking: No roaming partner preference match - use default roaming partner priority 128");
 return 128;
}
