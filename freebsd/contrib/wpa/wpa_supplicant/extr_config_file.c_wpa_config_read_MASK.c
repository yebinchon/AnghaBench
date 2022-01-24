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
struct wpa_ssid {struct wpa_ssid* next; } ;
struct wpa_cred {struct wpa_cred* next; } ;
struct wpa_config {struct wpa_cred* cred; struct wpa_ssid* ssid; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_config*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct wpa_config*,struct wpa_ssid*) ; 
 struct wpa_config* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct wpa_config*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpa_config*) ; 
 scalar_t__ FUNC10 (char*,int,int /*<<< orphan*/ *,int*,char**) ; 
 scalar_t__ FUNC11 (struct wpa_config*,int /*<<< orphan*/ *,int*,char*) ; 
 scalar_t__ FUNC12 (struct wpa_config*,char*,int) ; 
 struct wpa_cred* FUNC13 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 struct wpa_ssid* FUNC14 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 

struct wpa_config * FUNC16(const char *name, struct wpa_config *cfgp)
{
	FILE *f;
	char buf[512], *pos;
	int errors = 0, line = 0;
	struct wpa_ssid *ssid, *tail, *head;
	struct wpa_cred *cred, *cred_tail, *cred_head;
	struct wpa_config *config;
	int id = 0;
	int cred_id = 0;

	if (name == NULL)
		return NULL;
	if (cfgp)
		config = cfgp;
	else
		config = FUNC7(NULL, NULL);
	if (config == NULL) {
		FUNC15(MSG_ERROR, "Failed to allocate config file "
			   "structure");
		return NULL;
	}
	tail = head = config->ssid;
	while (tail && tail->next)
		tail = tail->next;
	cred_tail = cred_head = config->cred;
	while (cred_tail && cred_tail->next)
		cred_tail = cred_tail->next;

	FUNC15(MSG_DEBUG, "Reading configuration file '%s'", name);
	f = FUNC1(name, "r");
	if (f == NULL) {
		FUNC15(MSG_ERROR, "Failed to open config file '%s', "
			   "error: %s", name, FUNC5(errno));
		if (config != cfgp)
			FUNC2(config);
		return NULL;
	}

	while (FUNC10(buf, sizeof(buf), f, &line, &pos)) {
		if (FUNC3(pos, "network={") == 0) {
			ssid = FUNC14(f, &line, id++);
			if (ssid == NULL) {
				FUNC15(MSG_ERROR, "Line %d: failed to "
					   "parse network block.", line);
				errors++;
				continue;
			}
			if (head == NULL) {
				head = tail = ssid;
			} else {
				tail->next = ssid;
				tail = ssid;
			}
			if (FUNC6(config, ssid)) {
				FUNC15(MSG_ERROR, "Line %d: failed to add "
					   "network block to priority list.",
					   line);
				errors++;
				continue;
			}
		} else if (FUNC3(pos, "cred={") == 0) {
			cred = FUNC13(f, &line, cred_id++);
			if (cred == NULL) {
				FUNC15(MSG_ERROR, "Line %d: failed to "
					   "parse cred block.", line);
				errors++;
				continue;
			}
			if (cred_head == NULL) {
				cred_head = cred_tail = cred;
			} else {
				cred_tail->next = cred;
				cred_tail = cred;
			}
#ifndef CONFIG_NO_CONFIG_BLOBS
		} else if (FUNC4(pos, "blob-base64-", 12) == 0) {
			if (FUNC11(config, f, &line, pos + 12)
			    < 0) {
				FUNC15(MSG_ERROR, "Line %d: failed to "
					   "process blob.", line);
				errors++;
				continue;
			}
#endif /* CONFIG_NO_CONFIG_BLOBS */
		} else if (FUNC12(config, pos, line) < 0) {
			FUNC15(MSG_ERROR, "Line %d: Invalid configuration "
				   "line '%s'.", line, pos);
			errors++;
			continue;
		}
	}

	FUNC0(f);

	config->ssid = head;
	FUNC8(config);
	config->cred = cred_head;

#ifndef WPA_IGNORE_CONFIG_ERRORS
	if (errors) {
		if (config != cfgp)
			FUNC9(config);
		config = NULL;
		head = NULL;
	}
#endif /* WPA_IGNORE_CONFIG_ERRORS */

	return config;
}