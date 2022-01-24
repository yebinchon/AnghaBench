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
typedef  int /*<<< orphan*/  u8 ;
struct sta_info {int /*<<< orphan*/ * eapol_sm; } ;
struct hostapd_data {int dummy; } ;

/* Variables and functions */
 struct sta_info* FUNC0 (struct hostapd_data*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC1(void *ctx, const u8 *addr)
{
	struct hostapd_data *hapd = ctx;
	struct sta_info *sta;
	sta = FUNC0(hapd, addr);
	if (sta == NULL || sta->eapol_sm == NULL)
		return 0;
	return 1;
}