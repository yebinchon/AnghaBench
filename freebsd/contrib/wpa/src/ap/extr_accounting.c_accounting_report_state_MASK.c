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
typedef  int /*<<< orphan*/  u8 ;
struct radius_msg {int dummy; } ;
struct hostapd_data {int /*<<< orphan*/ * radius; scalar_t__ acct_session_id; TYPE_2__* conf; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {TYPE_1__* radius; } ;
struct TYPE_3__ {int /*<<< orphan*/  acct_server; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  RADIUS_ACCT ; 
 int /*<<< orphan*/  RADIUS_ACCT_STATUS_TYPE_ACCOUNTING_OFF ; 
 int /*<<< orphan*/  RADIUS_ACCT_STATUS_TYPE_ACCOUNTING_ON ; 
 int /*<<< orphan*/  RADIUS_ATTR_ACCT_SESSION_ID ; 
 struct radius_msg* FUNC0 (struct hostapd_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct radius_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct radius_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct radius_msg*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC7(struct hostapd_data *hapd, int on)
{
	struct radius_msg *msg;

	if (!hapd->conf->radius->acct_server || hapd->radius == NULL)
		return;

	/* Inform RADIUS server that accounting will start/stop so that the
	 * server can close old accounting sessions. */
	msg = FUNC0(hapd, NULL,
			     on ? RADIUS_ACCT_STATUS_TYPE_ACCOUNTING_ON :
			     RADIUS_ACCT_STATUS_TYPE_ACCOUNTING_OFF);
	if (!msg)
		return;

	if (hapd->acct_session_id) {
		char buf[20];

		FUNC1(buf, sizeof(buf), "%016llX",
			    (unsigned long long) hapd->acct_session_id);
		if (!FUNC4(msg, RADIUS_ATTR_ACCT_SESSION_ID,
					 (u8 *) buf, FUNC2(buf)))
			FUNC6(MSG_ERROR, "Could not add Acct-Session-Id");
	}

	if (FUNC3(hapd->radius, msg, RADIUS_ACCT, NULL) < 0)
		FUNC5(msg);
}