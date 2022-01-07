
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ifreq {int ifr_media; int ifm_current; int ifr_name; int ifm_name; } ;
struct ifmediareq {int ifr_media; int ifm_current; int ifr_name; int ifm_name; } ;
struct TYPE_4__ {int mode; TYPE_1__* ifp; } ;
struct atmif_priv {TYPE_2__ pub; } ;
typedef int ifr ;
typedef int ifmr ;
struct TYPE_3__ {int name; } ;


 int ATMIF_SUNI_MODE_SDH ;
 int IFM_ATM_SDH ;
 int LOG_ERR ;
 int SIOCGIFMEDIA ;
 int SIOCSIFMEDIA ;
 int SNMP_ERR_GENERR ;
 int SNMP_ERR_NOERROR ;
 scalar_t__ ioctl (int ,int ,struct ifreq*) ;
 int memset (struct ifreq*,int ,int) ;
 int mib_netsock ;
 int strcpy (int ,int ) ;
 int syslog (int ,char*) ;

__attribute__((used)) static int
atmif_set_mode(struct atmif_priv *aif, int newmode)
{
 struct ifmediareq ifmr;
 struct ifreq ifr;

 memset(&ifmr, 0, sizeof(ifmr));
 strcpy(ifmr.ifm_name, aif->pub.ifp->name);


 if (ioctl(mib_netsock, SIOCGIFMEDIA, &ifmr) < 0) {
  syslog(LOG_ERR, "SIOCGIFMEDIA: %m");
  return (SNMP_ERR_GENERR);
 }

 memset(&ifr, 0, sizeof(ifr));
 strcpy(ifr.ifr_name, aif->pub.ifp->name);

 ifr.ifr_media = ifmr.ifm_current;
 if (newmode == ATMIF_SUNI_MODE_SDH)
  ifr.ifr_media |= IFM_ATM_SDH;
 else
  ifr.ifr_media &= ~IFM_ATM_SDH;

 if (ioctl(mib_netsock, SIOCSIFMEDIA, &ifr) < 0) {
  syslog(LOG_ERR, "SIOCSIFMEDIA: %m");
  return (SNMP_ERR_GENERR);
 }

 aif->pub.mode = newmode;
 return (SNMP_ERR_NOERROR);
}
