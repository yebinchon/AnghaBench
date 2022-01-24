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
struct wpabuf {int dummy; } ;
struct p2p_message {scalar_t__ device_id; scalar_t__ p2p_device_addr; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_message*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct wpabuf*,struct p2p_message*) ; 

int FUNC3(struct wpabuf *p2p_ie, u8 *dev_addr)
{
	struct p2p_message msg;

	FUNC1(&msg, 0, sizeof(msg));
	if (FUNC2(p2p_ie, &msg))
		return -1;

	if (msg.p2p_device_addr) {
		FUNC0(dev_addr, msg.p2p_device_addr, ETH_ALEN);
		return 0;
	} else if (msg.device_id) {
		FUNC0(dev_addr, msg.device_id, ETH_ALEN);
		return 0;
	}
	return -1;
}