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
struct sta_info {int dummy; } ;
struct hostapd_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ap_handle_session_warning_timer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct hostapd_data*,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hostapd_data*,struct sta_info*) ; 

void FUNC2(struct hostapd_data *hapd,
				    struct sta_info *sta, int warning_time)
{
	FUNC0(ap_handle_session_warning_timer, hapd, sta);
	FUNC1(warning_time, 0, ap_handle_session_warning_timer,
			       hapd, sta);
}