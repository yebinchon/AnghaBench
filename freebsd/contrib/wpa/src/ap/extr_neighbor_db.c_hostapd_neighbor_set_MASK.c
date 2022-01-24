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
struct wpa_ssid_value {int dummy; } ;
typedef  struct wpa_ssid_value u8 ;
struct wpabuf {int dummy; } ;
struct hostapd_neighbor_entry {int stationary; void* civic; int /*<<< orphan*/  lci_date; void* lci; void* nr; int /*<<< orphan*/  ssid; int /*<<< orphan*/ * bssid; } ;
struct hostapd_data {int dummy; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 struct hostapd_neighbor_entry* FUNC0 (struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_neighbor_entry*) ; 
 struct hostapd_neighbor_entry* FUNC2 (struct hostapd_data*,struct wpa_ssid_value const*,struct wpa_ssid_value const*) ; 
 int /*<<< orphan*/  FUNC3 (struct hostapd_data*,struct wpa_ssid_value const*,struct wpa_ssid_value const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct wpa_ssid_value const*,int) ; 
 void* FUNC6 (struct wpabuf const*) ; 
 scalar_t__ FUNC7 (struct wpabuf const*) ; 

int FUNC8(struct hostapd_data *hapd, const u8 *bssid,
			 const struct wpa_ssid_value *ssid,
			 const struct wpabuf *nr, const struct wpabuf *lci,
			 const struct wpabuf *civic, int stationary)
{
	struct hostapd_neighbor_entry *entry;

	entry = FUNC2(hapd, bssid, ssid);
	if (!entry)
		entry = FUNC0(hapd);
	if (!entry)
		return -1;

	FUNC1(entry);

	FUNC5(entry->bssid, bssid, ETH_ALEN);
	FUNC5(&entry->ssid, ssid, sizeof(entry->ssid));

	entry->nr = FUNC6(nr);
	if (!entry->nr)
		goto fail;

	if (lci && FUNC7(lci)) {
		entry->lci = FUNC6(lci);
		if (!entry->lci || FUNC4(&entry->lci_date))
			goto fail;
	}

	if (civic && FUNC7(civic)) {
		entry->civic = FUNC6(civic);
		if (!entry->civic)
			goto fail;
	}

	entry->stationary = stationary;

	return 0;

fail:
	FUNC3(hapd, bssid, ssid);
	return -1;
}