#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint64_t ;
typedef  int uint32_t ;
struct vm {int dummy; } ;
struct TYPE_7__ {int num_msgs; int startrid; int msix_table_rid; int msix_pba_rid; int /*<<< orphan*/ ** res; int /*<<< orphan*/ ** cookie; TYPE_4__* arg; int /*<<< orphan*/ * msix_pba_res; int /*<<< orphan*/ * msix_table_res; } ;
struct pptdev {TYPE_3__ msix; int /*<<< orphan*/  dev; struct vm* vm; } ;
struct TYPE_5__ {int msix_table_bar; int msix_pba_bar; } ;
struct TYPE_6__ {TYPE_1__ msix; } ;
struct pci_devinfo {TYPE_2__ cfg; } ;
struct TYPE_8__ {void* msg_data; void* addr; struct pptdev* pptdev; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOSPC ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  M_PPTMSIX ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int PCIM_MSIX_VCTRL_MASK ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ **) ; 
 struct pci_devinfo* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (size_t,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct pptdev* FUNC7 (int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct pptdev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pptdev*,int) ; 
 int /*<<< orphan*/  pptintr ; 

int
FUNC10(struct vm *vm, int vcpu, int bus, int slot, int func,
	       int idx, uint64_t addr, uint64_t msg, uint32_t vector_control)
{
	struct pptdev *ppt;
	struct pci_devinfo *dinfo;
	int numvec, alloced, rid, error;
	size_t res_size, cookie_size, arg_size;

	ppt = FUNC7(bus, slot, func);
	if (ppt == NULL)
		return (ENOENT);
	if (ppt->vm != vm)		/* Make sure we own this device */
		return (EBUSY);

	dinfo = FUNC3(ppt->dev);
	if (!dinfo) 
		return (ENXIO);

	/* 
	 * First-time configuration:
	 * 	Allocate the MSI-X table
	 *	Allocate the IRQ resources
	 *	Set up some variables in ppt->msix
	 */
	if (ppt->msix.num_msgs == 0) {
		numvec = FUNC6(ppt->dev);
		if (numvec <= 0)
			return (EINVAL);

		ppt->msix.startrid = 1;
		ppt->msix.num_msgs = numvec;

		res_size = numvec * sizeof(ppt->msix.res[0]);
		cookie_size = numvec * sizeof(ppt->msix.cookie[0]);
		arg_size = numvec * sizeof(ppt->msix.arg[0]);

		ppt->msix.res = FUNC4(res_size, M_PPTMSIX, M_WAITOK | M_ZERO);
		ppt->msix.cookie = FUNC4(cookie_size, M_PPTMSIX,
					  M_WAITOK | M_ZERO);
		ppt->msix.arg = FUNC4(arg_size, M_PPTMSIX, M_WAITOK | M_ZERO);

		rid = dinfo->cfg.msix.msix_table_bar;
		ppt->msix.msix_table_res = FUNC0(ppt->dev,
					       SYS_RES_MEMORY, &rid, RF_ACTIVE);

		if (ppt->msix.msix_table_res == NULL) {
			FUNC8(ppt);
			return (ENOSPC);
		}
		ppt->msix.msix_table_rid = rid;

		if (dinfo->cfg.msix.msix_table_bar !=
		    dinfo->cfg.msix.msix_pba_bar) {
			rid = dinfo->cfg.msix.msix_pba_bar;
			ppt->msix.msix_pba_res = FUNC0(
			    ppt->dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);

			if (ppt->msix.msix_pba_res == NULL) {
				FUNC8(ppt);
				return (ENOSPC);
			}
			ppt->msix.msix_pba_rid = rid;
		}

		alloced = numvec;
		error = FUNC5(ppt->dev, &alloced);
		if (error || alloced != numvec) {
			FUNC8(ppt);
			return (error == 0 ? ENOSPC: error);
		}
	}

	if ((vector_control & PCIM_MSIX_VCTRL_MASK) == 0) {
		/* Tear down the IRQ if it's already set up */
		FUNC9(ppt, idx);

		/* Allocate the IRQ resource */
		ppt->msix.cookie[idx] = NULL;
		rid = ppt->msix.startrid + idx;
		ppt->msix.res[idx] = FUNC0(ppt->dev, SYS_RES_IRQ,
							    &rid, RF_ACTIVE);
		if (ppt->msix.res[idx] == NULL)
			return (ENXIO);
	
		ppt->msix.arg[idx].pptdev = ppt;
		ppt->msix.arg[idx].addr = addr;
		ppt->msix.arg[idx].msg_data = msg;
	
		/* Setup the MSI-X interrupt */
		error = FUNC2(ppt->dev, ppt->msix.res[idx],
				       INTR_TYPE_NET | INTR_MPSAFE,
				       pptintr, NULL, &ppt->msix.arg[idx],
				       &ppt->msix.cookie[idx]);
	
		if (error != 0) {
			FUNC1(ppt->dev, SYS_RES_IRQ, rid, ppt->msix.res[idx]);
			ppt->msix.cookie[idx] = NULL;
			ppt->msix.res[idx] = NULL;
			return (ENXIO);
		}
	} else {
		/* Masked, tear it down if it's already been set up */
		FUNC9(ppt, idx);
	}

	return (0);
}