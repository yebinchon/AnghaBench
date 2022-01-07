
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_bssid {int i_bssid; int i_name; } ;
struct bsd_driver_data {TYPE_1__* global; int ifname; } ;
struct TYPE_2__ {int sock; } ;


 int IEEE80211_ADDR_LEN ;
 int IEEE80211_IOC_BSSID ;
 int SIOCG80211BSSID ;
 scalar_t__ get80211var (struct bsd_driver_data*,int ,int *,int ) ;
 scalar_t__ ioctl (int ,int ,struct ieee80211_bssid*) ;
 int os_memcpy (int *,int ,int) ;
 int os_strlcpy (int ,int ,int) ;

__attribute__((used)) static int
wpa_driver_bsd_get_bssid(void *priv, u8 *bssid)
{
 struct bsd_driver_data *drv = priv;
 return get80211var(drv, IEEE80211_IOC_BSSID,
  bssid, IEEE80211_ADDR_LEN) < 0 ? -1 : 0;

}
