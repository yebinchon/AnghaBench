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
struct wpabuf {int dummy; } ;
struct wpa_supplicant {size_t last_scan_res_used; int /*<<< orphan*/ * last_scan_res; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 scalar_t__ FUNC1 (struct wpa_supplicant*,struct wpabuf**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*,struct wpabuf**) ; 

__attribute__((used)) static void FUNC3(struct wpa_supplicant *wpa_s,
				  struct wpabuf **buf)
{
	size_t i;

	for (i = 0; i < wpa_s->last_scan_res_used; i++) {
		if (FUNC1(wpa_s, buf, wpa_s->last_scan_res[i],
					0, 0) < 0)
			break;
	}

	if (!(*buf))
		FUNC2(wpa_s, buf);

	FUNC0(MSG_DEBUG, "RRM: Radio Measurement report", *buf);
}