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
struct wpabuf {int dummy; } ;
struct p2p_data {TYPE_1__* cfg; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 scalar_t__ ETH_ALEN ; 
 int P2P_ATTR_INTERFACE ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int) ; 

void FUNC3(struct wpabuf *buf, struct p2p_data *p2p)
{
	/* P2P Interface */
	FUNC2(buf, P2P_ATTR_INTERFACE);
	FUNC1(buf, ETH_ALEN + 1 + ETH_ALEN);
	/* P2P Device address */
	FUNC0(buf, p2p->cfg->dev_addr, ETH_ALEN);
	/*
	 * FIX: Fetch interface address list from driver. Do not include
	 * the P2P Device address if it is never used as interface address.
	 */
	/* P2P Interface Address Count */
	FUNC2(buf, 1);
	FUNC0(buf, p2p->cfg->dev_addr, ETH_ALEN);
}