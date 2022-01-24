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
struct hostapd_data {int /*<<< orphan*/ * dpp_pkex; int /*<<< orphan*/ * dpp_pkex_bi; int /*<<< orphan*/ * dpp_pkex_auth_cmd; int /*<<< orphan*/ * dpp_pkex_identifier; int /*<<< orphan*/ * dpp_pkex_code; } ;

/* Variables and functions */
 unsigned int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

int FUNC4(struct hostapd_data *hapd, const char *id)
{
	unsigned int id_val;

	if (FUNC3(id, "*") == 0) {
		id_val = 0;
	} else {
		id_val = FUNC0(id);
		if (id_val == 0)
			return -1;
	}

	if ((id_val != 0 && id_val != 1) || !hapd->dpp_pkex_code)
		return -1;

	/* TODO: Support multiple PKEX entries */
	FUNC2(hapd->dpp_pkex_code);
	hapd->dpp_pkex_code = NULL;
	FUNC2(hapd->dpp_pkex_identifier);
	hapd->dpp_pkex_identifier = NULL;
	FUNC2(hapd->dpp_pkex_auth_cmd);
	hapd->dpp_pkex_auth_cmd = NULL;
	hapd->dpp_pkex_bi = NULL;
	/* TODO: Remove dpp_pkex only if it is for the identified PKEX code */
	FUNC1(hapd->dpp_pkex);
	hapd->dpp_pkex = NULL;
	return 0;
}