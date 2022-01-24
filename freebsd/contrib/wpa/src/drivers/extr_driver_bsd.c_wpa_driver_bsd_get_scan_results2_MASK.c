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
typedef  int /*<<< orphan*/  uint8_t ;
struct wpa_scan_results {scalar_t__ num; } ;
struct ieee80211req_scan_result {scalar_t__ isr_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IOC_SCAN_RESULTS ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct wpa_scan_results* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_scan_results*,struct ieee80211req_scan_result*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,unsigned long) ; 

struct wpa_scan_results *
FUNC4(void *priv)
{
	struct ieee80211req_scan_result *sr;
	struct wpa_scan_results *res;
	int len, rest;
	uint8_t buf[24*1024], *pos;

	len = FUNC0(priv, IEEE80211_IOC_SCAN_RESULTS, buf, 24*1024);
	if (len < 0)
		return NULL;

	res = FUNC1(sizeof(*res));
	if (res == NULL)
		return NULL;

	pos = buf;
	rest = len;
	while (rest >= sizeof(struct ieee80211req_scan_result)) {
		sr = (struct ieee80211req_scan_result *)pos;
		FUNC2(res, sr);
		pos += sr->isr_len;
		rest -= sr->isr_len;
	}

	FUNC3(MSG_DEBUG, "Received %d bytes of scan results (%lu BSSes)",
		   len, (unsigned long)res->num);

	return res;
}