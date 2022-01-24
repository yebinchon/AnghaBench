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
struct hostapd_config {size_t num_bss; int /*<<< orphan*/ * bss; } ;
struct hostapd_bss_config {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (struct hostapd_config*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hostapd_config*,struct hostapd_bss_config*,char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC4(struct hostapd_config *conf,
		      struct hostapd_bss_config *bss, const char *field,
		      char *value)
{
	int errors;
	size_t i;

	errors = FUNC1(conf, bss, field, value, 0);
	if (errors) {
		FUNC3(MSG_INFO, "Failed to set configuration field '%s' "
			   "to value '%s'", field, value);
		return -1;
	}

	for (i = 0; i < conf->num_bss; i++)
		FUNC2(conf->bss[i], 0);

	if (FUNC0(conf, 0)) {
		FUNC3(MSG_ERROR, "Configuration check failed");
		return -1;
	}

	return 0;
}