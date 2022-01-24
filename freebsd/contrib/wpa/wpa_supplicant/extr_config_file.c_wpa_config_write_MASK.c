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
struct wpa_ssid {scalar_t__ key_mgmt; int /*<<< orphan*/  passphrase; int /*<<< orphan*/  psk_set; scalar_t__ temporary; struct wpa_ssid* next; } ;
struct wpa_cred {scalar_t__ temporary; struct wpa_cred* next; } ;
struct wpa_config_blob {struct wpa_config_blob* next; } ;
struct wpa_config {struct wpa_config_blob* blobs; struct wpa_ssid* ssid; struct wpa_cred* cred; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int S_IRGRP ; 
 int S_IRUSR ; 
 int S_IWGRP ; 
 int S_IWUSR ; 
 scalar_t__ WPA_KEY_MGMT_WPS ; 
 int FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char const*) ; 
 int FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (char*,char const*) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct wpa_config_blob*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct wpa_cred*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct wpa_config*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct wpa_ssid*) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,char const*,...) ; 

int FUNC16(const char *name, struct wpa_config *config)
{
#ifndef CONFIG_NO_CONFIG_WRITE
	FILE *f;
	struct wpa_ssid *ssid;
	struct wpa_cred *cred;
#ifndef CONFIG_NO_CONFIG_BLOBS
	struct wpa_config_blob *blob;
#endif /* CONFIG_NO_CONFIG_BLOBS */
	int ret = 0;
	const char *orig_name = name;
	int tmp_len = FUNC8(name) + 5; /* allow space for .tmp suffix */
	char *tmp_name = FUNC6(tmp_len);

	if (tmp_name) {
		FUNC7(tmp_name, tmp_len, "%s.tmp", name);
		name = tmp_name;
	}

	FUNC15(MSG_DEBUG, "Writing configuration file '%s'", name);

	f = FUNC2(name, "w");
	if (f == NULL) {
		FUNC15(MSG_DEBUG, "Failed to open '%s' for writing", name);
		FUNC5(tmp_name);
		return -1;
	}

	FUNC12(f, config);

	for (cred = config->cred; cred; cred = cred->next) {
		if (cred->temporary)
			continue;
		FUNC3(f, "\ncred={\n");
		FUNC11(f, cred);
		FUNC3(f, "}\n");
	}

	for (ssid = config->ssid; ssid; ssid = ssid->next) {
		if (ssid->key_mgmt == WPA_KEY_MGMT_WPS || ssid->temporary)
			continue; /* do not save temporary networks */
		if (FUNC14(ssid->key_mgmt) && !ssid->psk_set &&
		    !ssid->passphrase)
			continue; /* do not save invalid network */
		FUNC3(f, "\nnetwork={\n");
		FUNC13(f, ssid);
		FUNC3(f, "}\n");
	}

#ifndef CONFIG_NO_CONFIG_BLOBS
	for (blob = config->blobs; blob; blob = blob->next) {
		ret = FUNC10(f, blob);
		if (ret)
			break;
	}
#endif /* CONFIG_NO_CONFIG_BLOBS */

	FUNC4(f);

	FUNC1(f);

	if (tmp_name) {
		int chmod_ret = 0;

#ifdef ANDROID
		chmod_ret = chmod(tmp_name,
				  S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP);
#endif /* ANDROID */
		if (chmod_ret != 0 || FUNC9(tmp_name, orig_name) != 0)
			ret = -1;

		FUNC5(tmp_name);
	}

	FUNC15(MSG_DEBUG, "Configuration file '%s' written %ssuccessfully",
		   orig_name, ret ? "un" : "");
	return ret;
#else /* CONFIG_NO_CONFIG_WRITE */
	return -1;
#endif /* CONFIG_NO_CONFIG_WRITE */
}