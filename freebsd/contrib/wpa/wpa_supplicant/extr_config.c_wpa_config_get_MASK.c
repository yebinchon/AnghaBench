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
struct parse_data {char* (* writer ) (struct parse_data const*,struct wpa_ssid*) ;int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 size_t NUM_SSID_FIELDS ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 struct parse_data* ssid_fields ; 
 char* FUNC3 (struct parse_data const*,struct wpa_ssid*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 

char * FUNC5(struct wpa_ssid *ssid, const char *var)
{
	size_t i;

	if (ssid == NULL || var == NULL)
		return NULL;

	for (i = 0; i < NUM_SSID_FIELDS; i++) {
		const struct parse_data *field = &ssid_fields[i];
		if (FUNC2(var, field->name) == 0) {
			char *ret = field->writer(field, ssid);

			if (ret && FUNC0(ret)) {
				FUNC4(MSG_ERROR,
					   "Found newline in value for %s; not returning it",
					   var);
				FUNC1(ret);
				ret = NULL;
			}

			return ret;
		}
	}

	return NULL;
}