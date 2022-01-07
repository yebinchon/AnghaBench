
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifmediareq {int ifm_current; int ifm_name; } ;
struct bsd_driver_data {TYPE_1__* global; int ifname; } ;
typedef int ifmr ;
typedef enum ieee80211_opmode { ____Placeholder_ieee80211_opmode } ieee80211_opmode ;
typedef int caddr_t ;
struct TYPE_2__ {int sock; } ;


 int IEEE80211_M_AHDEMO ;
 int IEEE80211_M_HOSTAP ;
 int IEEE80211_M_IBSS ;
 int IEEE80211_M_MBSS ;
 int IEEE80211_M_MONITOR ;
 int IEEE80211_M_STA ;
 int IFM_FLAG0 ;
 int IFM_IEEE80211_ADHOC ;
 int IFM_IEEE80211_HOSTAP ;
 int IFM_IEEE80211_IBSS ;
 int IFM_IEEE80211_MBSS ;
 int IFM_IEEE80211_MONITOR ;
 int SIOCGIFMEDIA ;
 scalar_t__ ioctl (int ,int ,int ) ;
 int memset (struct ifmediareq*,int ,int) ;
 int os_strlcpy (int ,int ,int) ;

__attribute__((used)) static enum ieee80211_opmode
get80211opmode(struct bsd_driver_data *drv)
{
 struct ifmediareq ifmr;

 (void) memset(&ifmr, 0, sizeof(ifmr));
 (void) os_strlcpy(ifmr.ifm_name, drv->ifname, sizeof(ifmr.ifm_name));

 if (ioctl(drv->global->sock, SIOCGIFMEDIA, (caddr_t)&ifmr) >= 0) {
  if (ifmr.ifm_current & IFM_IEEE80211_ADHOC) {
   if (ifmr.ifm_current & IFM_FLAG0)
    return IEEE80211_M_AHDEMO;
   else
    return IEEE80211_M_IBSS;
  }
  if (ifmr.ifm_current & IFM_IEEE80211_HOSTAP)
   return IEEE80211_M_HOSTAP;
  if (ifmr.ifm_current & IFM_IEEE80211_IBSS)
   return IEEE80211_M_IBSS;
  if (ifmr.ifm_current & IFM_IEEE80211_MONITOR)
   return IEEE80211_M_MONITOR;




 }
 return IEEE80211_M_STA;
}
