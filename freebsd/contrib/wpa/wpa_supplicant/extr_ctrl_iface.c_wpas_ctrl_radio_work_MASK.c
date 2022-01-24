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
 scalar_t__ FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 int FUNC2 (struct wpa_supplicant*,char*,char*,size_t) ; 
 int FUNC3 (struct wpa_supplicant*,char*) ; 
 int FUNC4 (struct wpa_supplicant*,char*,size_t) ; 

__attribute__((used)) static int FUNC5(struct wpa_supplicant *wpa_s, char *cmd,
				char *buf, size_t buflen)
{
	if (FUNC0(cmd, "show") == 0)
		return FUNC4(wpa_s, buf, buflen);
	if (FUNC1(cmd, "add ", 4) == 0)
		return FUNC2(wpa_s, cmd + 4, buf, buflen);
	if (FUNC1(cmd, "done ", 5) == 0)
		return FUNC3(wpa_s, cmd + 4);
	return -1;
}