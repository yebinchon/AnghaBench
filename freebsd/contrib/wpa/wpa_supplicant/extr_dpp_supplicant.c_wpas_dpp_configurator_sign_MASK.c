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
struct wpa_supplicant {int /*<<< orphan*/  dpp; } ;
struct dpp_authentication {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpp_authentication*) ; 
 scalar_t__ FUNC1 (struct dpp_authentication*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct wpa_supplicant*,struct dpp_authentication*,char const*) ; 
 char* FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct dpp_authentication* FUNC5 (int) ; 
 int FUNC6 (struct wpa_supplicant*,struct dpp_authentication*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_supplicant*,struct dpp_authentication*) ; 

int FUNC8(struct wpa_supplicant *wpa_s, const char *cmd)
{
	struct dpp_authentication *auth;
	int ret = -1;
	char *curve = NULL;

	auth = FUNC5(sizeof(*auth));
	if (!auth)
		return -1;

	curve = FUNC3(cmd, " curve=");
	FUNC7(wpa_s, auth);
	if (FUNC2(wpa_s->dpp, wpa_s, auth, cmd) == 0 &&
	    FUNC1(auth, curve, 0) == 0)
		ret = FUNC6(wpa_s, auth);

	FUNC0(auth);
	FUNC4(curve);

	return ret;
}