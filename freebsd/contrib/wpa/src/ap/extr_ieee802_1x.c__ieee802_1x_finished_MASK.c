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
 int /*<<< orphan*/  FUNC0 (struct hostapd_data*,struct sta_info*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_data*,struct sta_info*,int) ; 

__attribute__((used)) static void FUNC2(void *ctx, void *sta_ctx, int success,
				 int preauth, int remediation)
{
	struct hostapd_data *hapd = ctx;
	struct sta_info *sta = sta_ctx;
	if (preauth)
		FUNC1(hapd, sta, success);
	else
		FUNC0(hapd, sta, success, remediation);
}