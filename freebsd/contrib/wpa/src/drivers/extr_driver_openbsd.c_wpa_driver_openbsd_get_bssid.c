
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct openbsd_driver_data {int sock; int ifname; } ;
struct ieee80211_bssid {int i_bssid; int i_name; } ;


 int IEEE80211_ADDR_LEN ;
 int SIOCG80211BSSID ;
 scalar_t__ ioctl (int ,int ,struct ieee80211_bssid*) ;
 int os_memcpy (int *,int ,int ) ;
 int os_strlcpy (int ,int ,int) ;

__attribute__((used)) static int
wpa_driver_openbsd_get_bssid(void *priv, u8 *bssid)
{
 struct openbsd_driver_data *drv = priv;
 struct ieee80211_bssid id;

 os_strlcpy(id.i_name, drv->ifname, sizeof(id.i_name));
 if (ioctl(drv->sock, SIOCG80211BSSID, &id) < 0)
  return -1;

 os_memcpy(bssid, id.i_bssid, IEEE80211_ADDR_LEN);
 return 0;
}
