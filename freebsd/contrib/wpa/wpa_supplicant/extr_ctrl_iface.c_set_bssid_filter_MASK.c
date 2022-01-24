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
struct wpa_supplicant {size_t bssid_filter_count; int /*<<< orphan*/ * bssid_filter; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,size_t,int) ; 
 char* FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int FUNC6(struct wpa_supplicant *wpa_s, char *val)
{
	char *pos;
	u8 addr[ETH_ALEN], *filter = NULL, *n;
	size_t count = 0;

	pos = val;
	while (pos) {
		if (*pos == '\0')
			break;
		if (FUNC0(pos, addr)) {
			FUNC1(filter);
			return -1;
		}
		n = FUNC3(filter, count + 1, ETH_ALEN);
		if (n == NULL) {
			FUNC1(filter);
			return -1;
		}
		filter = n;
		FUNC2(filter + count * ETH_ALEN, addr, ETH_ALEN);
		count++;

		pos = FUNC4(pos, ' ');
		if (pos)
			pos++;
	}

	FUNC5(MSG_DEBUG, "bssid_filter", filter, count * ETH_ALEN);
	FUNC1(wpa_s->bssid_filter);
	wpa_s->bssid_filter = filter;
	wpa_s->bssid_filter_count = count;

	return 0;
}