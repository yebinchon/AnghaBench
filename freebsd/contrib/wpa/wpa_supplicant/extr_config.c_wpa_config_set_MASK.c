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
struct parse_data {int (* parser ) (struct parse_data const*,struct wpa_ssid*,int,char const*) ;int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 size_t NUM_SSID_FIELDS ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 struct parse_data* ssid_fields ; 
 int FUNC1 (struct parse_data const*,struct wpa_ssid*,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,char const*,...) ; 

int FUNC3(struct wpa_ssid *ssid, const char *var, const char *value,
		   int line)
{
	size_t i;
	int ret = 0;

	if (ssid == NULL || var == NULL || value == NULL)
		return -1;

	for (i = 0; i < NUM_SSID_FIELDS; i++) {
		const struct parse_data *field = &ssid_fields[i];
		if (FUNC0(var, field->name) != 0)
			continue;

		ret = field->parser(field, ssid, line, value);
		if (ret < 0) {
			if (line) {
				FUNC2(MSG_ERROR, "Line %d: failed to "
					   "parse %s '%s'.", line, var, value);
			}
			ret = -1;
		}
		break;
	}
	if (i == NUM_SSID_FIELDS) {
		if (line) {
			FUNC2(MSG_ERROR, "Line %d: unknown network field "
				   "'%s'.", line, var);
		}
		ret = -1;
	}

	return ret;
}