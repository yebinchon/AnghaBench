#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ifmediareq {int ifm_status; int /*<<< orphan*/  ifm_name; } ;
struct TYPE_4__ {int carrier; TYPE_1__* ifp; } ;
struct atmif_priv {TYPE_2__ pub; } ;
typedef  int /*<<< orphan*/  ifmr ;
typedef  enum atmif_carrier_state { ____Placeholder_atmif_carrier_state } atmif_carrier_state ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ATMIF_CARRIER_OFF ; 
 int ATMIF_CARRIER_ON ; 
 void* ATMIF_CARRIER_UNKNOWN ; 
 int /*<<< orphan*/  ATMIF_NOTIFY_CARRIER ; 
 int IFM_ACTIVE ; 
 int IFM_AVALID ; 
 int /*<<< orphan*/  SIOCGIFMEDIA ; 
 int /*<<< orphan*/  FUNC0 (struct atmif_priv*,int /*<<< orphan*/ ,uintptr_t) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifmediareq*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifmediareq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mib_netsock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(struct atmif_priv *aif)
{
	struct ifmediareq ifmr;
	enum atmif_carrier_state ost = aif->pub.carrier;

	FUNC2(&ifmr, 0, sizeof(ifmr));
	FUNC3(ifmr.ifm_name, aif->pub.ifp->name);

	if (FUNC1(mib_netsock, SIOCGIFMEDIA, &ifmr) == -1) {
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
		FUNC0(aif, ATMIF_NOTIFY_CARRIER,
		    (uintptr_t)ost);
}