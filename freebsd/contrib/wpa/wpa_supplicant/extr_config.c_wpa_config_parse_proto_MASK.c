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
struct wpa_ssid {int proto; } ;
struct parse_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int WPA_PROTO_OSEN ; 
 int WPA_PROTO_RSN ; 
 int WPA_PROTO_WPA ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static int FUNC4(const struct parse_data *data,
				  struct wpa_ssid *ssid, int line,
				  const char *value)
{
	int val = 0, last, errors = 0;
	char *start, *end, *buf;

	buf = FUNC2(value);
	if (buf == NULL)
		return -1;
	start = buf;

	while (*start != '\0') {
		while (*start == ' ' || *start == '\t')
			start++;
		if (*start == '\0')
			break;
		end = start;
		while (*end != ' ' && *end != '\t' && *end != '\0')
			end++;
		last = *end == '\0';
		*end = '\0';
		if (FUNC1(start, "WPA") == 0)
			val |= WPA_PROTO_WPA;
		else if (FUNC1(start, "RSN") == 0 ||
			 FUNC1(start, "WPA2") == 0)
			val |= WPA_PROTO_RSN;
		else if (FUNC1(start, "OSEN") == 0)
			val |= WPA_PROTO_OSEN;
		else {
			FUNC3(MSG_ERROR, "Line %d: invalid proto '%s'",
				   line, start);
			errors++;
		}

		if (last)
			break;
		start = end + 1;
	}
	FUNC0(buf);

	if (val == 0) {
		FUNC3(MSG_ERROR,
			   "Line %d: no proto values configured.", line);
		errors++;
	}

	if (!errors && ssid->proto == val)
		return 1;
	FUNC3(MSG_MSGDUMP, "proto: 0x%x", val);
	ssid->proto = val;
	return errors ? -1 : 0;
}