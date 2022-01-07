
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ifmediareq {int ifm_status; int ifm_name; } ;
struct TYPE_4__ {int carrier; TYPE_1__* ifp; } ;
struct atmif_priv {TYPE_2__ pub; } ;
typedef int ifmr ;
typedef enum atmif_carrier_state { ____Placeholder_atmif_carrier_state } atmif_carrier_state ;
struct TYPE_3__ {int name; } ;


 int ATMIF_CARRIER_OFF ;
 int ATMIF_CARRIER_ON ;
 void* ATMIF_CARRIER_UNKNOWN ;
 int ATMIF_NOTIFY_CARRIER ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int SIOCGIFMEDIA ;
 int atmif_send_notification (struct atmif_priv*,int ,uintptr_t) ;
 int ioctl (int ,int ,struct ifmediareq*) ;
 int memset (struct ifmediareq*,int ,int) ;
 int mib_netsock ;
 int strcpy (int ,int ) ;

void
atmif_check_carrier(struct atmif_priv *aif)
{
 struct ifmediareq ifmr;
 enum atmif_carrier_state ost = aif->pub.carrier;

 memset(&ifmr, 0, sizeof(ifmr));
 strcpy(ifmr.ifm_name, aif->pub.ifp->name);

 if (ioctl(mib_netsock, SIOCGIFMEDIA, &ifmr) == -1) {
  aif->pub.carrier = ATMIF_CARRIER_UNKNOWN;
  return;
 }
 if (!(ifmr.ifm_status & IFM_AVALID)) {
  aif->pub.carrier = ATMIF_CARRIER_UNKNOWN;
  return;
 }
 if (ifmr.ifm_status & IFM_ACTIVE)
  aif->pub.carrier = ATMIF_CARRIER_ON;
 else
  aif->pub.carrier = ATMIF_CARRIER_OFF;

 if (ost != aif->pub.carrier)
  atmif_send_notification(aif, ATMIF_NOTIFY_CARRIER,
      (uintptr_t)ost);
}
