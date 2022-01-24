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
struct wpa_supplicant {TYPE_1__* global; } ;
struct p2p_data {int dummy; } ;
struct TYPE_2__ {struct p2p_data* p2p; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct p2p_data*,int /*<<< orphan*/ *) ; 

int FUNC2(struct wpa_supplicant *wpa_s, const char *addr)
{
	u8 peer[ETH_ALEN];
	struct p2p_data *p2p = wpa_s->global->p2p;

	if (p2p == NULL)
		return -1;

	if (FUNC0(addr, peer))
		return -1;

	return FUNC1(p2p, peer);
}