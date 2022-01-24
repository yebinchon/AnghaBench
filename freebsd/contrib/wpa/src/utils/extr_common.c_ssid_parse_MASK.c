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
struct wpa_ssid_value {size_t ssid_len; int /*<<< orphan*/  ssid; } ;

/* Variables and functions */
 size_t SSID_MAX_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 
 char* FUNC2 (char*,char) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char*,size_t*) ; 

int FUNC5(const char *buf, struct wpa_ssid_value *ssid)
{
	char *tmp, *res, *end;
	size_t len;

	ssid->ssid_len = 0;

	tmp = FUNC3(buf);
	if (!tmp)
		return -1;

	if (*tmp != '"') {
		end = FUNC2(tmp, ' ');
		if (end)
			*end = '\0';
	} else {
		end = FUNC2(tmp + 1, '"');
		if (!end) {
			FUNC0(tmp);
			return -1;
		}

		end[1] = '\0';
	}

	res = FUNC4(tmp, &len);
	if (res && len <= SSID_MAX_LEN) {
		ssid->ssid_len = len;
		FUNC1(ssid->ssid, res, len);
	}

	FUNC0(tmp);
	FUNC0(res);

	return ssid->ssid_len ? 0 : -1;
}