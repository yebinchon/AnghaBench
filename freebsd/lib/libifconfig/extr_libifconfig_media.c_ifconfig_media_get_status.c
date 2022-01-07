
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmediareq {int ifm_status; int ifm_active; } ;


 int IFM_ACTIVE ;



 int IFM_IEEE80211_STA ;
 int IFM_OPMODE (int ) ;
 int IFM_TYPE (int ) ;

const char *
ifconfig_media_get_status(const struct ifmediareq *ifmr)
{
 switch (IFM_TYPE(ifmr->ifm_active)) {
 case 129:
 case 130:
  if (ifmr->ifm_status & IFM_ACTIVE) {
   return ("active");
  } else {
   return ("no carrier");
  }
  break;

 case 128:
  if (ifmr->ifm_status & IFM_ACTIVE) {

   if (IFM_OPMODE(ifmr->ifm_active) == IFM_IEEE80211_STA) {
    return ("associated");
   } else {
    return ("running");
   }
  } else {
   return ("no carrier");
  }
  break;
 default:
  return ("");
 }
}
