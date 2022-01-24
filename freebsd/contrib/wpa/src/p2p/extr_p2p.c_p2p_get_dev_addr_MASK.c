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
struct TYPE_2__ {int /*<<< orphan*/  p2p_device_addr; } ;
struct p2p_device {TYPE_1__ info; } ;
struct p2p_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct p2p_device* FUNC1 (struct p2p_data*,int /*<<< orphan*/  const*) ; 

int FUNC2(struct p2p_data *p2p, const u8 *iface_addr,
			   u8 *dev_addr)
{
	struct p2p_device *dev = FUNC1(p2p, iface_addr);
	if (dev == NULL)
		return -1;
	FUNC0(dev_addr, dev->info.p2p_device_addr, ETH_ALEN);
	return 0;
}