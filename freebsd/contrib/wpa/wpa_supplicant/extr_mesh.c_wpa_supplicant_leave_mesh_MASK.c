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
struct wpa_supplicant {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int FUNC0 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*) ; 

int FUNC4(struct wpa_supplicant *wpa_s)
{
	int ret = 0;

	FUNC2(wpa_s, MSG_INFO, "leaving mesh");

	/* Need to send peering close messages first */
	FUNC3(wpa_s);

	ret = FUNC0(wpa_s);
	if (ret)
		FUNC2(wpa_s, MSG_ERROR, "mesh leave error=%d", ret);

	FUNC1(wpa_s, 1);

	return ret;
}