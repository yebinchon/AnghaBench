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
struct wpa_ssid {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (struct wpa_ssid*,char*) ; 

__attribute__((used)) static void FUNC3(FILE *f, struct wpa_ssid *ssid)
{
	char *value = FUNC2(ssid, "bssid");
	if (value == NULL)
		return;
	FUNC0(f, "\tbssid=%s\n", value);
	FUNC1(value);
}