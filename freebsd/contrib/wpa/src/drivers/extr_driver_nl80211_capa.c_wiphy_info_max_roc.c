
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_driver_capa {int max_remain_on_chan; } ;
struct nlattr {int dummy; } ;


 int nla_get_u32 (struct nlattr*) ;

__attribute__((used)) static void wiphy_info_max_roc(struct wpa_driver_capa *capa,
          struct nlattr *tb)
{
 if (tb)
  capa->max_remain_on_chan = nla_get_u32(tb);
}
