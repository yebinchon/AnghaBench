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
struct wpabuf {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  token; } ;
struct TYPE_3__ {int /*<<< orphan*/  dst_addr; } ;
struct wpa_supplicant {TYPE_2__ beacon_rep_data; TYPE_1__ rrm; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEASUREMENT_REPORT_MODE_REJECT_REFUSED ; 
 int /*<<< orphan*/  MEASURE_TYPE_BEACON ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*) ; 
 scalar_t__ FUNC4 (struct wpabuf**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*,struct wpabuf*) ; 

void FUNC6(struct wpa_supplicant *wpa_s)
{
	if (!FUNC0(wpa_s->rrm.dst_addr)) {
		struct wpabuf *buf = NULL;

		if (FUNC4(&buf, wpa_s->beacon_rep_data.token,
					 MEASUREMENT_REPORT_MODE_REJECT_REFUSED,
					 MEASURE_TYPE_BEACON, NULL, 0)) {
			FUNC1(MSG_ERROR, "RRM: Memory allocation failed");
			FUNC2(buf);
			return;
		}

		FUNC5(wpa_s, buf);
		FUNC2(buf);
	}

	FUNC3(wpa_s);
}