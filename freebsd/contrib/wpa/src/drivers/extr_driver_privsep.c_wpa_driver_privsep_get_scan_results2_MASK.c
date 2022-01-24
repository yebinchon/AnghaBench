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
struct wpa_scan_results {size_t num; int ie_len; int beacon_ie_len; struct wpa_scan_results** res; } ;
typedef  struct wpa_scan_results u8 ;
struct wpa_scan_res {size_t num; int ie_len; int beacon_ie_len; struct wpa_scan_res** res; } ;
struct wpa_driver_privsep_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  PRIVSEP_CMD_GET_SCAN_RESULTS ; 
 struct wpa_scan_results** FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_scan_results*) ; 
 struct wpa_scan_results* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int*,struct wpa_scan_results*,int) ; 
 struct wpa_scan_results* FUNC4 (struct wpa_scan_results*,int) ; 
 struct wpa_scan_results* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC7 (struct wpa_driver_privsep_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct wpa_scan_results*,size_t*) ; 

__attribute__((used)) static struct wpa_scan_results *
FUNC8(void *priv)
{
	struct wpa_driver_privsep_data *drv = priv;
	int res, num;
	u8 *buf, *pos, *end;
	size_t reply_len = 60000;
	struct wpa_scan_results *results;
	struct wpa_scan_res *r;

	buf = FUNC2(reply_len);
	if (buf == NULL)
		return NULL;
	res = FUNC7(drv, PRIVSEP_CMD_GET_SCAN_RESULTS,
			   NULL, 0, buf, &reply_len);
	if (res < 0) {
		FUNC1(buf);
		return NULL;
	}

	FUNC6(MSG_DEBUG, "privsep: Received %lu bytes of scan results",
		   (unsigned long) reply_len);
	if (reply_len < sizeof(int)) {
		FUNC6(MSG_DEBUG, "privsep: Invalid scan result len %lu",
			   (unsigned long) reply_len);
		FUNC1(buf);
		return NULL;
	}

	pos = buf;
	end = buf + reply_len;
	FUNC3(&num, pos, sizeof(int));
	if (num < 0 || num > 1000) {
		FUNC1(buf);
		return NULL;
	}
	pos += sizeof(int);

	results = FUNC5(sizeof(*results));
	if (results == NULL) {
		FUNC1(buf);
		return NULL;
	}

	results->res = FUNC0(num, sizeof(struct wpa_scan_res *));
	if (results->res == NULL) {
		FUNC1(results);
		FUNC1(buf);
		return NULL;
	}

	while (results->num < (size_t) num && end - pos > (int) sizeof(int)) {
		int len;
		FUNC3(&len, pos, sizeof(int));
		pos += sizeof(int);
		if (len < 0 || len > 10000 || len > end - pos)
			break;

		r = FUNC4(pos, len);
		if (r == NULL)
			break;
		pos += len;
		if (sizeof(*r) + r->ie_len + r->beacon_ie_len > (size_t) len) {
			FUNC6(MSG_ERROR,
				   "privsep: Invalid scan result len (%d + %d + %d > %d)",
				   (int) sizeof(*r), (int) r->ie_len,
				   (int) r->beacon_ie_len, len);
			FUNC1(r);
			break;
		}

		results->res[results->num++] = r;
	}

	FUNC1(buf);
	return results;
}