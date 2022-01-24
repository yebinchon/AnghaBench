#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wpa_pmkid_params {int /*<<< orphan*/ * pmkid; int /*<<< orphan*/ * bssid; } ;
struct wpa_driver_ndis_data {scalar_t__ no_of_pmkid; struct ndis_pmkid_entry* pmkid; } ;
struct ndis_pmkid_entry {struct ndis_pmkid_entry* next; int /*<<< orphan*/  pmkid; int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 struct ndis_pmkid_entry* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int FUNC3 (struct wpa_driver_ndis_data*) ; 

__attribute__((used)) static int FUNC4(void *priv,
				     struct wpa_pmkid_params *params)
{
	struct wpa_driver_ndis_data *drv = priv;
	struct ndis_pmkid_entry *entry, *prev;
	const u8 *bssid = params->bssid;
	const u8 *pmkid = params->pmkid;

	if (!bssid || !pmkid)
		return -1;
	if (drv->no_of_pmkid == 0)
		return 0;

	prev = NULL;
	entry = drv->pmkid;
	while (entry) {
		if (FUNC1(entry->bssid, bssid, ETH_ALEN) == 0)
			break;
		prev = entry;
		entry = entry->next;
	}

	if (entry) {
		/* Replace existing entry for this BSSID and move it into the
		 * beginning of the list. */
		FUNC2(entry->pmkid, pmkid, 16);
		if (prev) {
			prev->next = entry->next;
			entry->next = drv->pmkid;
			drv->pmkid = entry;
		}
	} else {
		entry = FUNC0(sizeof(*entry));
		if (entry) {
			FUNC2(entry->bssid, bssid, ETH_ALEN);
			FUNC2(entry->pmkid, pmkid, 16);
			entry->next = drv->pmkid;
			drv->pmkid = entry;
		}
	}

	return FUNC3(drv);
}