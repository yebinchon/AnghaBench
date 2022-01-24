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
struct sta_info {int /*<<< orphan*/  addr; struct sta_info* hnext; } ;
struct hostapd_data {struct sta_info** sta_hash; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(struct hostapd_data *hapd, struct sta_info *sta)
{
	sta->hnext = hapd->sta_hash[FUNC0(sta->addr)];
	hapd->sta_hash[FUNC0(sta->addr)] = sta;
}