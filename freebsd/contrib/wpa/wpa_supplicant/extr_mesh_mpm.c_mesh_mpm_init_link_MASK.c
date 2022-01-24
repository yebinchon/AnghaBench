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
typedef  scalar_t__ u16 ;
struct wpa_supplicant {int dummy; } ;
struct sta_info {int /*<<< orphan*/  plink_state; scalar_t__ peer_aid; scalar_t__ peer_lid; scalar_t__ my_lid; } ;
typedef  int /*<<< orphan*/  llid ;

/* Variables and functions */
 int /*<<< orphan*/  PLINK_IDLE ; 
 scalar_t__ FUNC0 (struct wpa_supplicant*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(struct wpa_supplicant *wpa_s,
			       struct sta_info *sta)
{
	u16 llid;

	do {
		if (FUNC1((u8 *) &llid, sizeof(llid)) < 0)
			llid = 0; /* continue */
	} while (!llid || FUNC0(wpa_s, llid));

	sta->my_lid = llid;
	sta->peer_lid = 0;
	sta->peer_aid = 0;

	/*
	 * We do not use wpa_mesh_set_plink_state() here because there is no
	 * entry in kernel yet.
	 */
	sta->plink_state = PLINK_IDLE;
}