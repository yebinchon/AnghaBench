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
struct p2p_message {int dummy; } ;
struct p2p_device {int /*<<< orphan*/  last_seen; } ;
struct p2p_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_data*,int /*<<< orphan*/  const*,struct p2p_device*,struct p2p_message*) ; 
 struct p2p_device* FUNC2 (struct p2p_data*,int /*<<< orphan*/  const*) ; 
 struct p2p_device* FUNC3 (struct p2p_data*,int /*<<< orphan*/  const*) ; 

struct p2p_device * FUNC4(struct p2p_data *p2p,
						const u8 *addr,
						struct p2p_message *msg)
{
	struct p2p_device *dev;

	dev = FUNC3(p2p, addr);
	if (dev) {
		FUNC0(&dev->last_seen);
		return dev; /* already known */
	}

	dev = FUNC2(p2p, addr);
	if (dev == NULL)
		return NULL;

	FUNC1(p2p, addr, dev, msg);

	return dev;
}