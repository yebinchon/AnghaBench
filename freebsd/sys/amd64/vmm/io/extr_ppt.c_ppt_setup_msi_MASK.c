#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint64_t ;
struct vm {int dummy; } ;
struct TYPE_3__ {int startrid; int num_msgs; int /*<<< orphan*/ ** cookie; TYPE_2__* arg; int /*<<< orphan*/ ** res; } ;
struct pptdev {TYPE_1__ msi; int /*<<< orphan*/  dev; struct vm* vm; } ;
struct TYPE_4__ {void* msg_data; void* addr; struct pptdev* pptdev; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOSPC ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int MAX_MSIMSGS ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct pptdev* FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pptdev*) ; 
 int /*<<< orphan*/  pptintr ; 

int
FUNC7(struct vm *vm, int vcpu, int bus, int slot, int func,
	      uint64_t addr, uint64_t msg, int numvec)
{
	int i, rid, flags;
	int msi_count, startrid, error, tmp;
	struct pptdev *ppt;

	if (numvec < 0 || numvec > MAX_MSIMSGS)
		return (EINVAL);

	ppt = FUNC5(bus, slot, func);
	if (ppt == NULL)
		return (ENOENT);
	if (ppt->vm != vm)		/* Make sure we own this device */
		return (EBUSY);

	/* Free any allocated resources */
	FUNC6(ppt);

	if (numvec == 0)		/* nothing more to do */
		return (0);

	flags = RF_ACTIVE;
	msi_count = FUNC3(ppt->dev);
	if (msi_count == 0) {
		startrid = 0;		/* legacy interrupt */
		msi_count = 1;
		flags |= RF_SHAREABLE;
	} else
		startrid = 1;		/* MSI */

	/*
	 * The device must be capable of supporting the number of vectors
	 * the guest wants to allocate.
	 */
	if (numvec > msi_count)
		return (EINVAL);

	/*
	 * Make sure that we can allocate all the MSI vectors that are needed
	 * by the guest.
	 */
	if (startrid == 1) {
		tmp = numvec;
		error = FUNC2(ppt->dev, &tmp);
		if (error)
			return (error);
		else if (tmp != numvec) {
			FUNC4(ppt->dev);
			return (ENOSPC);
		} else {
			/* success */
		}
	}
	
	ppt->msi.startrid = startrid;

	/*
	 * Allocate the irq resource and attach it to the interrupt handler.
	 */
	for (i = 0; i < numvec; i++) {
		ppt->msi.num_msgs = i + 1;
		ppt->msi.cookie[i] = NULL;

		rid = startrid + i;
		ppt->msi.res[i] = FUNC0(ppt->dev, SYS_RES_IRQ,
							 &rid, flags);
		if (ppt->msi.res[i] == NULL)
			break;

		ppt->msi.arg[i].pptdev = ppt;
		ppt->msi.arg[i].addr = addr;
		ppt->msi.arg[i].msg_data = msg + i;

		error = FUNC1(ppt->dev, ppt->msi.res[i],
				       INTR_TYPE_NET | INTR_MPSAFE,
				       pptintr, NULL, &ppt->msi.arg[i],
				       &ppt->msi.cookie[i]);
		if (error != 0)
			break;
	}
	
	if (i < numvec) {
		FUNC6(ppt);
		return (ENXIO);
	}

	return (0);
}