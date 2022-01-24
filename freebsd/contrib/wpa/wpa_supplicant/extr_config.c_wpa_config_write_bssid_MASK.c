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
struct wpa_ssid {int /*<<< orphan*/  bssid; int /*<<< orphan*/  bssid_set; } ;
struct parse_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MACSTR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int) ; 

__attribute__((used)) static char * FUNC5(const struct parse_data *data,
				     struct wpa_ssid *ssid)
{
	char *value;
	int res;

	if (!ssid->bssid_set)
		return NULL;

	value = FUNC2(20);
	if (value == NULL)
		return NULL;
	res = FUNC3(value, 20, MACSTR, FUNC0(ssid->bssid));
	if (FUNC4(20, res)) {
		FUNC1(value);
		return NULL;
	}
	value[20 - 1] = '\0';
	return value;
}