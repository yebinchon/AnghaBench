
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bsd_driver_data {int dummy; } ;


 int IEEE80211_IOC_OPTIE ;
 int bsd_set_opt_ie (struct bsd_driver_data*,int const*,size_t) ;
 int set80211var (struct bsd_driver_data*,int ,int const*,size_t) ;

__attribute__((used)) static int
wpa_driver_bsd_set_wpa_ie(struct bsd_driver_data *drv, const u8 *wpa_ie,
     size_t wpa_ie_len)
{



 return set80211var(drv, IEEE80211_IOC_OPTIE, wpa_ie, wpa_ie_len);

}
