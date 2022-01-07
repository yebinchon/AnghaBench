
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nlattr {int dummy; } ;
struct hostapd_hw_modes {int vht_mcs_set; int vht_capab; } ;


 int * nla_data (struct nlattr*) ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 int os_memcpy (int ,int *,int) ;

__attribute__((used)) static void phy_info_vht_capa(struct hostapd_hw_modes *mode,
         struct nlattr *capa,
         struct nlattr *mcs_set)
{
 if (capa)
  mode->vht_capab = nla_get_u32(capa);

 if (mcs_set && nla_len(mcs_set) >= 8) {
  u8 *mcs;
  mcs = nla_data(mcs_set);
  os_memcpy(mode->vht_mcs_set, mcs, 8);
 }
}
