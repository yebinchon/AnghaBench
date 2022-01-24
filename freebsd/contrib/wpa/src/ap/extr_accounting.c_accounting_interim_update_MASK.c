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
struct sta_info {int acct_interim_interval; } ;
struct hostapd_data {int dummy; } ;
struct hostap_sta_driver_data {int dummy; } ;

/* Variables and functions */
 int ACCT_DEFAULT_UPDATE_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_data*,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_data*,struct sta_info*,struct hostap_sta_driver_data*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,void (*) (void*,void*),struct hostapd_data*,struct sta_info*) ; 

__attribute__((used)) static void FUNC3(void *eloop_ctx, void *timeout_ctx)
{
	struct hostapd_data *hapd = eloop_ctx;
	struct sta_info *sta = timeout_ctx;
	int interval;

	if (sta->acct_interim_interval) {
		FUNC0(hapd, sta);
		interval = sta->acct_interim_interval;
	} else {
		struct hostap_sta_driver_data data;
		FUNC1(hapd, sta, &data);
		interval = ACCT_DEFAULT_UPDATE_INTERVAL;
	}

	FUNC2(interval, 0, accounting_interim_update,
			       hapd, sta);
}