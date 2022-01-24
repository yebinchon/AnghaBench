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
struct sta_info {int acct_session_started; int acct_interim_interval; int /*<<< orphan*/  addr; scalar_t__ last_tx_bytes_lo; scalar_t__ last_tx_bytes_hi; scalar_t__ last_rx_bytes_lo; scalar_t__ last_rx_bytes_hi; int /*<<< orphan*/  acct_session_start; scalar_t__ acct_session_id; } ;
struct radius_msg {int dummy; } ;
struct hostapd_data {int /*<<< orphan*/  radius; TYPE_2__* conf; } ;
struct TYPE_4__ {TYPE_1__* radius; } ;
struct TYPE_3__ {int /*<<< orphan*/  acct_server; } ;

/* Variables and functions */
 int ACCT_DEFAULT_UPDATE_INTERVAL ; 
 int /*<<< orphan*/  HOSTAPD_LEVEL_INFO ; 
 int /*<<< orphan*/  HOSTAPD_MODULE_RADIUS ; 
 int /*<<< orphan*/  RADIUS_ACCT ; 
 int /*<<< orphan*/  RADIUS_ACCT_STATUS_TYPE_START ; 
 int /*<<< orphan*/  accounting_interim_update ; 
 struct radius_msg* FUNC0 (struct hostapd_data*,struct sta_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hostapd_data*,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct hostapd_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hostapd_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct radius_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct radius_msg*) ; 

void FUNC7(struct hostapd_data *hapd, struct sta_info *sta)
{
	struct radius_msg *msg;
	int interval;

	if (sta->acct_session_started)
		return;

	FUNC3(hapd, sta->addr, HOSTAPD_MODULE_RADIUS,
		       HOSTAPD_LEVEL_INFO,
		       "starting accounting session %016llX",
		       (unsigned long long) sta->acct_session_id);

	FUNC4(&sta->acct_session_start);
	sta->last_rx_bytes_hi = 0;
	sta->last_rx_bytes_lo = 0;
	sta->last_tx_bytes_hi = 0;
	sta->last_tx_bytes_lo = 0;
	FUNC2(hapd, sta->addr);

	if (!hapd->conf->radius->acct_server)
		return;

	if (sta->acct_interim_interval)
		interval = sta->acct_interim_interval;
	else
		interval = ACCT_DEFAULT_UPDATE_INTERVAL;
	FUNC1(interval, 0, accounting_interim_update,
			       hapd, sta);

	msg = FUNC0(hapd, sta, RADIUS_ACCT_STATUS_TYPE_START);
	if (msg &&
	    FUNC5(hapd->radius, msg, RADIUS_ACCT, sta->addr) < 0)
		FUNC6(msg);

	sta->acct_session_started = 1;
}