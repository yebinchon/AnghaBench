
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_state_machine {scalar_t__ wpa_key_mgmt; int pairwise; int ANonce; int addr; TYPE_1__* wpa_auth; scalar_t__ dpp_z; int pmk_r1_name; int SNonce; int pmk_r1_len; int pmk_r1; scalar_t__ ft_completed; } ;
struct wpa_ptk {int dummy; } ;
struct TYPE_2__ {int addr; } ;


 scalar_t__ WPA_KEY_MGMT_DPP ;
 int WPA_PMK_NAME_LEN ;
 int wpa_auth_derive_ptk_ft (struct wpa_state_machine*,struct wpa_ptk*) ;
 scalar_t__ wpa_key_mgmt_ft (scalar_t__) ;
 int wpa_pmk_r1_to_ptk (int ,int ,int ,int ,int ,int ,int ,struct wpa_ptk*,int *,scalar_t__,int ) ;
 int wpa_pmk_to_ptk (int const*,unsigned int,char*,int ,int ,int ,int const*,struct wpa_ptk*,scalar_t__,int ,int const*,size_t) ;
 int * wpabuf_head (scalar_t__) ;
 size_t wpabuf_len (scalar_t__) ;

__attribute__((used)) static int wpa_derive_ptk(struct wpa_state_machine *sm, const u8 *snonce,
     const u8 *pmk, unsigned int pmk_len,
     struct wpa_ptk *ptk)
{
 const u8 *z = ((void*)0);
 size_t z_len = 0;
 return wpa_pmk_to_ptk(pmk, pmk_len, "Pairwise key expansion",
         sm->wpa_auth->addr, sm->addr, sm->ANonce, snonce,
         ptk, sm->wpa_key_mgmt, sm->pairwise, z, z_len);
}
