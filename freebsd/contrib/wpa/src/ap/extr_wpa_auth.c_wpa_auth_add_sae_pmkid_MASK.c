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
struct wpa_state_machine {int pmkid_set; int /*<<< orphan*/  pmkid; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMKID_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

void FUNC1(struct wpa_state_machine *sm, const u8 *pmkid)
{
	FUNC0(sm->pmkid, pmkid, PMKID_LEN);
	sm->pmkid_set = 1;
}