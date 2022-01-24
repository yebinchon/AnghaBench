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
struct hostapd_config {size_t num_bss; struct hostapd_bss_config** bss; struct hostapd_bss_config* last_bss; int /*<<< orphan*/ * driver; } ;
struct hostapd_bss_config {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (struct hostapd_config*,int) ; 
 struct hostapd_config* FUNC4 () ; 
 scalar_t__ FUNC5 (struct hostapd_config*,struct hostapd_bss_config*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hostapd_config*) ; 
 int /*<<< orphan*/  FUNC7 (struct hostapd_bss_config*,int) ; 
 char* FUNC8 (char*,char) ; 
 int /*<<< orphan*/ ** wpa_drivers ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 

struct hostapd_config * FUNC10(const char *fname)
{
	struct hostapd_config *conf;
	FILE *f;
	char buf[4096], *pos;
	int line = 0;
	int errors = 0;
	size_t i;

	f = FUNC2(fname, "r");
	if (f == NULL) {
		FUNC9(MSG_ERROR, "Could not open configuration file '%s' "
			   "for reading.", fname);
		return NULL;
	}

	conf = FUNC4();
	if (conf == NULL) {
		FUNC0(f);
		return NULL;
	}

	/* set default driver based on configuration */
	conf->driver = wpa_drivers[0];
	if (conf->driver == NULL) {
		FUNC9(MSG_ERROR, "No driver wrappers registered!");
		FUNC6(conf);
		FUNC0(f);
		return NULL;
	}

	conf->last_bss = conf->bss[0];

	while (FUNC1(buf, sizeof(buf), f)) {
		struct hostapd_bss_config *bss;

		bss = conf->last_bss;
		line++;

		if (buf[0] == '#')
			continue;
		pos = buf;
		while (*pos != '\0') {
			if (*pos == '\n') {
				*pos = '\0';
				break;
			}
			pos++;
		}
		if (buf[0] == '\0')
			continue;

		pos = FUNC8(buf, '=');
		if (pos == NULL) {
			FUNC9(MSG_ERROR, "Line %d: invalid line '%s'",
				   line, buf);
			errors++;
			continue;
		}
		*pos = '\0';
		pos++;
		errors += FUNC5(conf, bss, buf, pos, line);
	}

	FUNC0(f);

	for (i = 0; i < conf->num_bss; i++)
		FUNC7(conf->bss[i], 1);

	if (FUNC3(conf, 1))
		errors++;

#ifndef WPA_IGNORE_CONFIG_ERRORS
	if (errors) {
		FUNC9(MSG_ERROR, "%d errors found in configuration file "
			   "'%s'", errors, fname);
		FUNC6(conf);
		conf = NULL;
	}
#endif /* WPA_IGNORE_CONFIG_ERRORS */

	return conf;
}