#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wpa_driver_ndis_data {int no_of_pmkid; struct ndis_pmkid_entry* pmkid; } ;
struct ndis_pmkid_entry {struct ndis_pmkid_entry* next; int /*<<< orphan*/  pmkid; int /*<<< orphan*/  bssid; } ;
struct TYPE_6__ {int Length; int BSSIDInfoCount; TYPE_1__* BSSIDInfo; } ;
struct TYPE_5__ {int /*<<< orphan*/  PMKID; int /*<<< orphan*/  BSSID; } ;
typedef  TYPE_2__ NDIS_802_11_PMKID ;
typedef  int /*<<< orphan*/  BSSID_INFO ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  OID_802_11_PMKID ; 
 int FUNC0 (struct wpa_driver_ndis_data*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct wpa_driver_ndis_data *drv)
{
	int len, count, i, ret;
	struct ndis_pmkid_entry *entry;
	NDIS_802_11_PMKID *p;

	count = 0;
	entry = drv->pmkid;
	while (entry) {
		count++;
		if (count >= drv->no_of_pmkid)
			break;
		entry = entry->next;
	}
	len = 8 + count * sizeof(BSSID_INFO);
	p = FUNC3(len);
	if (p == NULL)
		return -1;

	p->Length = len;
	p->BSSIDInfoCount = count;
	entry = drv->pmkid;
	for (i = 0; i < count; i++) {
		FUNC2(&p->BSSIDInfo[i].BSSID, entry->bssid, ETH_ALEN);
		FUNC2(&p->BSSIDInfo[i].PMKID, entry->pmkid, 16);
		entry = entry->next;
	}
	FUNC4(MSG_MSGDUMP, "NDIS: OID_802_11_PMKID", (u8 *) p, len);
	ret = FUNC0(drv, OID_802_11_PMKID, (char *) p, len);
	FUNC1(p);
	return ret;
}