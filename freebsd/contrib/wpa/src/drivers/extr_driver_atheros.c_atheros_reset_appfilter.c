
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211req_set_filter {scalar_t__ app_filterype; } ;
struct atheros_driver_data {int dummy; } ;


 int IEEE80211_IOCTL_FILTERFRAME ;
 int set80211priv (struct atheros_driver_data*,int ,struct ieee80211req_set_filter*,int) ;

__attribute__((used)) static int atheros_reset_appfilter(struct atheros_driver_data *drv)
{
 struct ieee80211req_set_filter filt;
 filt.app_filterype = 0;
 return set80211priv(drv, IEEE80211_IOCTL_FILTERFRAME, &filt,
       sizeof(struct ieee80211req_set_filter));
}
