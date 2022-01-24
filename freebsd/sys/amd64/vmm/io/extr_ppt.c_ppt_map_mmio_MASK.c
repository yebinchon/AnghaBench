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
typedef  int /*<<< orphan*/  vm_paddr_t ;
struct vm {int dummy; } ;
struct pptseg {size_t len; int /*<<< orphan*/  gpa; } ;
struct pptdev {struct pptseg* mmio; struct vm* vm; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOENT ; 
 int ENOSPC ; 
 int MAX_MMIOSEGS ; 
 struct pptdev* FUNC0 (int,int,int) ; 
 int FUNC1 (struct vm*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 

int
FUNC2(struct vm *vm, int bus, int slot, int func,
	     vm_paddr_t gpa, size_t len, vm_paddr_t hpa)
{
	int i, error;
	struct pptseg *seg;
	struct pptdev *ppt;

	ppt = FUNC0(bus, slot, func);
	if (ppt != NULL) {
		if (ppt->vm != vm)
			return (EBUSY);

		for (i = 0; i < MAX_MMIOSEGS; i++) {
			seg = &ppt->mmio[i];
			if (seg->len == 0) {
				error = FUNC1(vm, gpa, len, hpa);
				if (error == 0) {
					seg->gpa = gpa;
					seg->len = len;
				}
				return (error);
			}
		}
		return (ENOSPC);
	}
	return (ENOENT);
}