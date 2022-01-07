
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ifreq {void* ifr_data; int ifr_name; } ;
struct ieee80211_nwid {scalar_t__ i_len; int i_nwid; } ;
struct bsd_driver_data {TYPE_1__* global; int ifname; } ;
typedef int ifr ;
struct TYPE_2__ {int sock; } ;


 int IEEE80211_IOC_SSID ;
 scalar_t__ IEEE80211_NWID_LEN ;
 int SIOCG80211NWID ;
 int get80211var (struct bsd_driver_data*,int ,int *,scalar_t__) ;
 scalar_t__ ioctl (int ,int ,struct ifreq*) ;
 int os_memcpy (int *,int ,scalar_t__) ;
 int os_memset (struct ifreq*,int ,int) ;
 int os_strlcpy (int ,int ,int) ;

__attribute__((used)) static int
bsd_get_ssid(void *priv, u8 *ssid, int len)
{
 struct bsd_driver_data *drv = priv;
 return get80211var(drv, IEEE80211_IOC_SSID, ssid, IEEE80211_NWID_LEN);

}
