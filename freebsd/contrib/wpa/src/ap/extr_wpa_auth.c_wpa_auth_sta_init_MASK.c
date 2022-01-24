#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wpa_state_machine {TYPE_1__* group; struct wpa_authenticator* wpa_auth; int /*<<< orphan*/  p2p_dev_addr; int /*<<< orphan*/  addr; } ;
struct wpa_authenticator {TYPE_1__* group; } ;
struct TYPE_2__ {scalar_t__ wpa_group_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ WPA_GROUP_FATAL_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct wpa_state_machine* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_authenticator*,TYPE_1__*) ; 

struct wpa_state_machine *
FUNC3(struct wpa_authenticator *wpa_auth, const u8 *addr,
		  const u8 *p2p_dev_addr)
{
	struct wpa_state_machine *sm;

	if (wpa_auth->group->wpa_group_state == WPA_GROUP_FATAL_FAILURE)
		return NULL;

	sm = FUNC1(sizeof(struct wpa_state_machine));
	if (sm == NULL)
		return NULL;
	FUNC0(sm->addr, addr, ETH_ALEN);
	if (p2p_dev_addr)
		FUNC0(sm->p2p_dev_addr, p2p_dev_addr, ETH_ALEN);

	sm->wpa_auth = wpa_auth;
	sm->group = wpa_auth->group;
	FUNC2(sm->wpa_auth, sm->group);

	return sm;
}