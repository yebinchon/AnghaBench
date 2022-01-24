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
struct ibv_xrcd_init_attr {int comp_mask; int fd; int /*<<< orphan*/  oflags; } ;
struct ibv_xrcd {int dummy; } ;
struct cma_device {struct ibv_xrcd* xrcd; int /*<<< orphan*/  verbs; } ;

/* Variables and functions */
 int IBV_XRCD_INIT_ATTR_FD ; 
 int IBV_XRCD_INIT_ATTR_OFLAGS ; 
 int /*<<< orphan*/  O_CREAT ; 
 struct ibv_xrcd* FUNC0 (int /*<<< orphan*/ ,struct ibv_xrcd_init_attr*) ; 
 int /*<<< orphan*/  FUNC1 (struct ibv_xrcd_init_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mut ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ibv_xrcd *FUNC4(struct cma_device *cma_dev)
{
	struct ibv_xrcd_init_attr attr;

	FUNC2(&mut);
	if (!cma_dev->xrcd) {
		FUNC1(&attr, 0, sizeof attr);
		attr.comp_mask = IBV_XRCD_INIT_ATTR_FD | IBV_XRCD_INIT_ATTR_OFLAGS;
		attr.fd = -1;
		attr.oflags = O_CREAT;
		cma_dev->xrcd = FUNC0(cma_dev->verbs, &attr);
	}
	FUNC3(&mut);
	return cma_dev->xrcd;
}