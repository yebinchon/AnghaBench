
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct openbsd_driver_data {int sock; int ifname; } ;
struct ifreq {void* ifr_data; int ifr_name; } ;
struct ieee80211_nwid {scalar_t__ i_len; int i_nwid; } ;
typedef int ifr ;


 scalar_t__ IEEE80211_NWID_LEN ;
 int SIOCG80211NWID ;
 scalar_t__ ioctl (int ,int ,struct ifreq*) ;
 int os_memcpy (int *,int ,scalar_t__) ;
 int os_memset (struct ifreq*,int ,int) ;
 int os_strlcpy (int ,int ,int) ;

__attribute__((used)) static int
wpa_driver_openbsd_get_ssid(void *priv, u8 *ssid)
{
 struct openbsd_driver_data *drv = priv;
 struct ieee80211_nwid nwid;
 struct ifreq ifr;

 os_memset(&ifr, 0, sizeof(ifr));
 os_strlcpy(ifr.ifr_name, drv->ifname, sizeof(ifr.ifr_name));
 ifr.ifr_data = (void *)&nwid;
 if (ioctl(drv->sock, SIOCG80211NWID, &ifr) < 0 ||
     nwid.i_len > IEEE80211_NWID_LEN)
  return -1;

 os_memcpy(ssid, nwid.i_nwid, nwid.i_len);
 return nwid.i_len;
}
