#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wpa_driver_ndis_data {scalar_t__ no_of_pmkid; struct ndis_pmkid_entry* pmkid; } ;
struct ndis_pmkid_entry {struct ndis_pmkid_entry* next; } ;
typedef  int /*<<< orphan*/  p ;
struct TYPE_3__ {int Length; scalar_t__ BSSIDInfoCount; } ;
typedef  TYPE_1__ NDIS_802_11_PMKID ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int Ndis802_11AuthModeWPA2 ; 
 int /*<<< orphan*/  OID_802_11_PMKID ; 
 int FUNC0 (struct wpa_driver_ndis_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_driver_ndis_data*,int) ; 
 int FUNC2 (struct wpa_driver_ndis_data*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ndis_pmkid_entry*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(void *priv)
{
	struct wpa_driver_ndis_data *drv = priv;
	NDIS_802_11_PMKID p;
	struct ndis_pmkid_entry *pmkid, *prev;
	int prev_authmode, ret;

	if (drv->no_of_pmkid == 0)
		return 0;

	pmkid = drv->pmkid;
	drv->pmkid = NULL;
	while (pmkid) {
		prev = pmkid;
		pmkid = pmkid->next;
		FUNC3(prev);
	}

	/*
	 * Some drivers may refuse OID_802_11_PMKID if authMode is not set to
	 * WPA2, so change authMode temporarily, if needed.
	 */
	prev_authmode = FUNC0(drv);
	if (prev_authmode != Ndis802_11AuthModeWPA2)
		FUNC1(drv, Ndis802_11AuthModeWPA2);

	FUNC4(&p, 0, sizeof(p));
	p.Length = 8;
	p.BSSIDInfoCount = 0;
	FUNC5(MSG_MSGDUMP, "NDIS: OID_802_11_PMKID (flush)",
		    (u8 *) &p, 8);
	ret = FUNC2(drv, OID_802_11_PMKID, (char *) &p, 8);

	if (prev_authmode != Ndis802_11AuthModeWPA2)
		FUNC1(drv, prev_authmode);

	return ret;
}