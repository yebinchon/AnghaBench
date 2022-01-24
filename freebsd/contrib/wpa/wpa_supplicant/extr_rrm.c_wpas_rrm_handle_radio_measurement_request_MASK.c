#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dst_addr; int /*<<< orphan*/  token; int /*<<< orphan*/  rrm_used; } ;
struct wpa_supplicant {scalar_t__ wpa_state; TYPE_1__ rrm; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ WPA_COMPLETED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*) ; 
 struct wpabuf* FUNC3 (struct wpa_supplicant*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,struct wpabuf*) ; 

void FUNC5(struct wpa_supplicant *wpa_s,
					       const u8 *src, const u8 *dst,
					       const u8 *frame, size_t len)
{
	struct wpabuf *report;

	if (wpa_s->wpa_state != WPA_COMPLETED) {
		FUNC1(MSG_INFO,
			   "RRM: Ignoring radio measurement request: Not associated");
		return;
	}

	if (!wpa_s->rrm.rrm_used) {
		FUNC1(MSG_INFO,
			   "RRM: Ignoring radio measurement request: Not RRM network");
		return;
	}

	if (len < 3) {
		FUNC1(MSG_INFO,
			   "RRM: Ignoring too short radio measurement request");
		return;
	}

	wpa_s->rrm.token = *frame;
	FUNC0(wpa_s->rrm.dst_addr, dst, ETH_ALEN);

	/* Number of repetitions is not supported */

	report = FUNC3(wpa_s, frame + 3, len - 3);
	if (!report)
		return;

	FUNC4(wpa_s, report);
	FUNC2(report);
}