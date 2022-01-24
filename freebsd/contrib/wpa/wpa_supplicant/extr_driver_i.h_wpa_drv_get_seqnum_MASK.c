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
struct wpa_supplicant {int /*<<< orphan*/  drv_priv; int /*<<< orphan*/  ifname; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* get_seqnum ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC1(struct wpa_supplicant *wpa_s,
				     const u8 *addr, int idx, u8 *seq)
{
	if (wpa_s->driver->get_seqnum)
		return wpa_s->driver->get_seqnum(wpa_s->ifname, wpa_s->drv_priv,
						 addr, idx, seq);
	return -1;
}