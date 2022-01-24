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
struct sta_info {scalar_t__ plink_state; } ;
struct hostapd_data {int /*<<< orphan*/  num_plinks; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELOOP_ALL_CTX ; 
 scalar_t__ PLINK_ESTAB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sta_info*) ; 
 int /*<<< orphan*/  mesh_auth_timer ; 
 int /*<<< orphan*/  plink_timer ; 

void FUNC1(struct hostapd_data *hapd, struct sta_info *sta)
{
	if (sta->plink_state == PLINK_ESTAB)
		hapd->num_plinks--;
	FUNC0(plink_timer, ELOOP_ALL_CTX, sta);
	FUNC0(mesh_auth_timer, ELOOP_ALL_CTX, sta);
}