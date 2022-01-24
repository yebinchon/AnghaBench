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
struct p2p_device {int /*<<< orphan*/  interface_addr; } ;
struct p2p_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct p2p_device* FUNC2 (struct p2p_data*,int /*<<< orphan*/  const*) ; 

int FUNC3(struct p2p_data *p2p, const u8 *dev_addr,
			   u8 *iface_addr)
{
	struct p2p_device *dev = FUNC2(p2p, dev_addr);
	if (dev == NULL || FUNC0(dev->interface_addr))
		return -1;
	FUNC1(iface_addr, dev->interface_addr, ETH_ALEN);
	return 0;
}