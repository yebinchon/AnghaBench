
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ifreq {void* ifr_data; int ifr_name; } ;
struct ieee80211_nwid {int i_len; int i_nwid; } ;
struct bsd_driver_data {TYPE_1__* global; int ifname; } ;
typedef int ifr ;
struct TYPE_2__ {int sock; } ;


 int IEEE80211_IOC_SSID ;
 int SIOCS80211NWID ;
 int ioctl (int ,int ,struct ifreq*) ;
 int os_memcpy (int ,int const*,int) ;
 int os_memset (struct ifreq*,int ,int) ;
 int os_strlcpy (int ,int ,int) ;
 int set80211var (struct bsd_driver_data*,int ,int const*,int) ;

__attribute__((used)) static int
bsd_set_ssid(void *priv, const u8 *ssid, int ssid_len)
{
 struct bsd_driver_data *drv = priv;
 return set80211var(drv, IEEE80211_IOC_SSID, ssid, ssid_len);

}
