#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wpa_supplicant {int /*<<< orphan*/ * ext_pw; int /*<<< orphan*/  eapol; TYPE_1__* conf; } ;
struct TYPE_2__ {int /*<<< orphan*/  ext_password_backend; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,char) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC7(struct wpa_supplicant *wpa_s)
{
	char *val, *pos;

	FUNC1(wpa_s->ext_pw);
	wpa_s->ext_pw = NULL;
	FUNC0(wpa_s->eapol, NULL);

	if (!wpa_s->conf->ext_password_backend)
		return 0;

	val = FUNC5(wpa_s->conf->ext_password_backend);
	if (val == NULL)
		return -1;
	pos = FUNC4(val, ':');
	if (pos)
		*pos++ = '\0';

	FUNC6(MSG_DEBUG, "EXT PW: Initialize backend '%s'", val);

	wpa_s->ext_pw = FUNC2(val, pos);
	FUNC3(val);
	if (wpa_s->ext_pw == NULL) {
		FUNC6(MSG_DEBUG, "EXT PW: Failed to initialize backend");
		return -1;
	}
	FUNC0(wpa_s->eapol, wpa_s->ext_pw);

	return 0;
}