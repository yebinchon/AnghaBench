#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ refcnt; int /*<<< orphan*/  os_priv; int /*<<< orphan*/  ctx; } ;
typedef  TYPE_1__ libusb_device ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(libusb_device *dev)
{
	if (dev == NULL)
		return;			/* be NULL safe */

	FUNC0(dev->ctx);
	dev->refcnt--;
	FUNC1(dev->ctx);

	if (dev->refcnt == 0) {
		FUNC3(dev->os_priv);
		FUNC2(dev);
	}
}