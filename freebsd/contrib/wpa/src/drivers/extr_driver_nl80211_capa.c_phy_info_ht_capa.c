
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nlattr {int dummy; } ;
struct hostapd_hw_modes {int a_mpdu_params; int mcs_set; int ht_capab; } ;


 int * nla_data (struct nlattr*) ;
 int nla_get_u16 (struct nlattr*) ;
 int nla_get_u8 (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 int os_memcpy (int ,int *,int) ;

__attribute__((used)) static void phy_info_ht_capa(struct hostapd_hw_modes *mode, struct nlattr *capa,
        struct nlattr *ampdu_factor,
        struct nlattr *ampdu_density,
        struct nlattr *mcs_set)
{
 if (capa)
  mode->ht_capab = nla_get_u16(capa);

 if (ampdu_factor)
  mode->a_mpdu_params |= nla_get_u8(ampdu_factor) & 0x03;

 if (ampdu_density)
  mode->a_mpdu_params |= nla_get_u8(ampdu_density) << 2;

 if (mcs_set && nla_len(mcs_set) >= 16) {
  u8 *mcs;
  mcs = nla_data(mcs_set);
  os_memcpy(mode->mcs_set, mcs, 16);
 }
}
