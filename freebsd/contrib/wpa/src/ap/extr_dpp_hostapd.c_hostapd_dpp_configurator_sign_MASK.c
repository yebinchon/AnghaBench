#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hostapd_data {int /*<<< orphan*/  msg_ctx; TYPE_1__* iface; } ;
struct dpp_authentication {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dpp; } ;
struct TYPE_3__ {TYPE_2__* interfaces; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpp_authentication*) ; 
 scalar_t__ FUNC1 (struct dpp_authentication*,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dpp_authentication*,char const*) ; 
 char* FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct hostapd_data*,struct dpp_authentication*) ; 
 int /*<<< orphan*/  FUNC5 (struct hostapd_data*,struct dpp_authentication*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct dpp_authentication* FUNC7 (int) ; 

int FUNC8(struct hostapd_data *hapd, const char *cmd)
{
	struct dpp_authentication *auth;
	int ret = -1;
	char *curve = NULL;

	auth = FUNC7(sizeof(*auth));
	if (!auth)
		return -1;

	curve = FUNC3(cmd, " curve=");
	FUNC5(hapd, auth);
	if (FUNC2(hapd->iface->interfaces->dpp, hapd->msg_ctx,
				 auth, cmd) == 0 &&
	    FUNC1(auth, curve, 1) == 0) {
		FUNC4(hapd, auth);
		ret = 0;
	}

	FUNC0(auth);
	FUNC6(curve);

	return ret;
}