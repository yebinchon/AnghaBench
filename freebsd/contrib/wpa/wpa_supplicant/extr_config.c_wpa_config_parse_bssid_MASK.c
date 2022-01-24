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
struct wpa_ssid {int bssid_set; int /*<<< orphan*/  bssid; } ;
struct parse_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC4(const struct parse_data *data,
				  struct wpa_ssid *ssid, int line,
				  const char *value)
{
	if (value[0] == '\0' || FUNC1(value, "\"\"") == 0 ||
	    FUNC1(value, "any") == 0) {
		ssid->bssid_set = 0;
		FUNC3(MSG_MSGDUMP, "BSSID any");
		return 0;
	}
	if (FUNC0(value, ssid->bssid)) {
		FUNC3(MSG_ERROR, "Line %d: Invalid BSSID '%s'.",
			   line, value);
		return -1;
	}
	ssid->bssid_set = 1;
	FUNC2(MSG_MSGDUMP, "BSSID", ssid->bssid, ETH_ALEN);
	return 0;
}