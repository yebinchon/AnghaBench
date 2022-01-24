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

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC5 (char const*,char*) ; 
 scalar_t__ FUNC6 (char const*,char const**,char const**,char const**) ; 

__attribute__((used)) static const char * FUNC7(const char *data)
{
	const char *tag, *tagname, *end;
	char *val;
	int found = 0;

	while (!found) {
		/* Find next <device> */
		for (;;) {
			if (FUNC6(data, &tag, &tagname, &end))
				return NULL;
			data = end;
			if (!FUNC3(tagname, "device", 6) &&
			    *tag != '/' &&
			    (tagname[6] == '>' || !FUNC0(tagname[6]))) {
				break;
			}
		}

		/* Check whether deviceType is WFADevice */
		val = FUNC5(data, "deviceType");
		if (val == NULL)
			return NULL;
		FUNC4(MSG_DEBUG, "WPS ER: Found deviceType '%s'", val);
		found = FUNC2(val, "urn:schemas-wifialliance-org:"
				      "device:WFADevice:1") == 0;
		FUNC1(val);
	}

	return data;
}