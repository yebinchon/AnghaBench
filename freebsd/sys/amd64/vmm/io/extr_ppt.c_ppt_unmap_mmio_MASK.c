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
struct vm {int dummy; } ;
struct pptseg {scalar_t__ len; int /*<<< orphan*/  gpa; } ;
struct pptdev {struct pptseg* mmio; } ;

/* Variables and functions */
 int MAX_MMIOSEGS ; 
 int /*<<< orphan*/  FUNC0 (struct pptseg*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vm*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(struct vm *vm, struct pptdev *ppt)
{
	int i;
	struct pptseg *seg;

	for (i = 0; i < MAX_MMIOSEGS; i++) {
		seg = &ppt->mmio[i];
		if (seg->len == 0)
			continue;
		(void)FUNC1(vm, seg->gpa, seg->len);
		FUNC0(seg, sizeof(struct pptseg));
	}
}