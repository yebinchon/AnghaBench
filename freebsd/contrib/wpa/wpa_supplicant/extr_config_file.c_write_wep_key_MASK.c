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
typedef  int /*<<< orphan*/  field ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,int,char*,int) ; 
 scalar_t__ FUNC3 (int,int) ; 
 char* FUNC4 (struct wpa_ssid*,char*) ; 

__attribute__((used)) static void FUNC5(FILE *f, int idx, struct wpa_ssid *ssid)
{
	char field[20], *value;
	int res;

	res = FUNC2(field, sizeof(field), "wep_key%d", idx);
	if (FUNC3(sizeof(field), res))
		return;
	value = FUNC4(ssid, field);
	if (value) {
		FUNC0(f, "\t%s=%s\n", field, value);
		FUNC1(value);
	}
}