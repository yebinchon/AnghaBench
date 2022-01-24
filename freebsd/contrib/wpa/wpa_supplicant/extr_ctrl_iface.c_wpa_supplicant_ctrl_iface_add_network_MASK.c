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
struct wpa_ssid {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (char*,size_t,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct wpa_ssid* FUNC3 (struct wpa_supplicant*) ; 

__attribute__((used)) static int FUNC4(
	struct wpa_supplicant *wpa_s, char *buf, size_t buflen)
{
	struct wpa_ssid *ssid;
	int ret;

	FUNC2(MSG_DEBUG, "CTRL_IFACE: ADD_NETWORK");

	ssid = FUNC3(wpa_s);
	if (ssid == NULL)
		return -1;

	ret = FUNC0(buf, buflen, "%d\n", ssid->id);
	if (FUNC1(buflen, ret))
		return -1;
	return ret;
}