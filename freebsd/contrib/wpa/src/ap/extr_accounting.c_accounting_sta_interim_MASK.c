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
struct sta_info {scalar_t__ acct_session_started; } ;
struct hostapd_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hostapd_data*,struct sta_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct hostapd_data *hapd,
				   struct sta_info *sta)
{
	if (sta->acct_session_started)
		FUNC0(hapd, sta, 0);
}