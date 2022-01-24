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
typedef  int /*<<< orphan*/  u16 ;
struct sta_info {int /*<<< orphan*/  addr; } ;
struct iapp_data {int /*<<< orphan*/  hapd; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOSTAPD_LEVEL_DEBUG ; 
 int /*<<< orphan*/  HOSTAPD_MODULE_IAPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iapp_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iapp_data*,int /*<<< orphan*/ ) ; 

void FUNC3(struct iapp_data *iapp, struct sta_info *sta)
{
	u16 seq = 0; /* TODO */

	if (iapp == NULL)
		return;

	/* IAPP-ADD.request(MAC Address, Sequence Number, Timeout) */
	FUNC0(iapp->hapd, sta->addr, HOSTAPD_MODULE_IAPP,
		       HOSTAPD_LEVEL_DEBUG, "IAPP-ADD.request(seq=%d)", seq);
	FUNC2(iapp, sta->addr);
	FUNC1(iapp, sta->addr, seq);

	/* TODO: If this was reassociation:
	 * IAPP-MOVE.request(MAC Address, Sequence Number, Old AP,
	 *                   Context Block, Timeout)
	 * TODO: Send IAPP-MOVE to the old AP; Map Old AP BSSID to
	 * IP address */
}