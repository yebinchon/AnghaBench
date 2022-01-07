
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct phy_info_arg {size_t* num_modes; TYPE_1__* modes; } ;
struct TYPE_2__ {int ht_capab; } ;


 int HT_CAP_INFO_SUPP_CHANNEL_WIDTH_SET ;
 int nl80211_set_ht40_mode (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void nl80211_reg_rule_ht40(u32 start, u32 end,
      struct phy_info_arg *results)
{
 u16 m;

 for (m = 0; m < *results->num_modes; m++) {
  if (!(results->modes[m].ht_capab &
        HT_CAP_INFO_SUPP_CHANNEL_WIDTH_SET))
   continue;
  nl80211_set_ht40_mode(&results->modes[m], start, end);
 }
}
