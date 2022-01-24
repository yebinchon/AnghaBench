#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ndisusb_ep {int /*<<< orphan*/ * ne_xfer; } ;
struct ndis_softc {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  irp_cancelirql; void* irp_cancel; } ;
typedef  TYPE_1__ irp ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  device_object ;

/* Variables and functions */
 struct ndisusb_ep* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ndis_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ndis_softc*) ; 
 void* TRUE ; 
 struct ndis_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(device_object *dobj, irp *ip)
{
	device_t dev = FUNC1(ip);
	struct ndis_softc *sc = FUNC5(dev);
	struct ndisusb_ep *ne = FUNC0(ip);

	if (ne == NULL) {
		ip->irp_cancel = TRUE;
		FUNC2(ip->irp_cancelirql);
		return;
	}

	/*
	 * Make sure that the current USB transfer proxy is
	 * cancelled and then restarted.
	 */
	FUNC3(sc);
	FUNC7(ne->ne_xfer[0]);
	FUNC6(ne->ne_xfer[0]);
	FUNC4(sc);

	ip->irp_cancel = TRUE;
	FUNC2(ip->irp_cancelirql);
}