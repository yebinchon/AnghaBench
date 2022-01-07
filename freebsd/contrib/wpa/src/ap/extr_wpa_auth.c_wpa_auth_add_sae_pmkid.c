
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_state_machine {int pmkid_set; int pmkid; } ;


 int PMKID_LEN ;
 int os_memcpy (int ,int const*,int ) ;

void wpa_auth_add_sae_pmkid(struct wpa_state_machine *sm, const u8 *pmkid)
{
 os_memcpy(sm->pmkid, pmkid, PMKID_LEN);
 sm->pmkid_set = 1;
}
