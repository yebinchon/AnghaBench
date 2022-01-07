
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ifmediareq {int ifm_current; int ifm_name; } ;
struct TYPE_4__ {int mode; TYPE_1__* ifp; } ;
struct atmif_priv {TYPE_2__ pub; } ;
typedef int ifmr ;
struct TYPE_3__ {int name; } ;


 int ATMIF_SUNI_MODE_SDH ;
 int ATMIF_SUNI_MODE_SONET ;
 int ATMIF_SUNI_MODE_UNKNOWN ;
 int IFM_ATM_SDH ;
 int LOG_ERR ;
 int SIOCGIFMEDIA ;
 int SNMP_ERR_GENERR ;
 int SNMP_ERR_NOERROR ;
 scalar_t__ ioctl (int ,int ,struct ifmediareq*) ;
 int memset (struct ifmediareq*,int ,int) ;
 int mib_netsock ;
 int strcpy (int ,int ) ;
 int syslog (int ,char*) ;

__attribute__((used)) static int
atmif_get_mode(struct atmif_priv *aif)
{
 struct ifmediareq ifmr;

 memset(&ifmr, 0, sizeof(ifmr));
 strcpy(ifmr.ifm_name, aif->pub.ifp->name);

 if (ioctl(mib_netsock, SIOCGIFMEDIA, &ifmr) < 0) {
  syslog(LOG_ERR, "SIOCGIFMEDIA: %m");
  aif->pub.mode = ATMIF_SUNI_MODE_UNKNOWN;
  return (SNMP_ERR_GENERR);
 }
 if (ifmr.ifm_current & IFM_ATM_SDH)
  aif->pub.mode = ATMIF_SUNI_MODE_SDH;
 else
  aif->pub.mode = ATMIF_SUNI_MODE_SONET;

 return (SNMP_ERR_NOERROR);
}
