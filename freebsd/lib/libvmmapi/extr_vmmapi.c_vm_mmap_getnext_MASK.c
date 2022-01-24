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
typedef  int /*<<< orphan*/  vm_ooffset_t ;
struct vmctx {int /*<<< orphan*/  fd; } ;
struct vm_memmap {int segid; size_t len; int prot; int flags; int /*<<< orphan*/  segoff; int /*<<< orphan*/  gpa; } ;

/* Variables and functions */
 int /*<<< orphan*/  VM_MMAP_GETNEXT ; 
 int /*<<< orphan*/  FUNC0 (struct vm_memmap*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_memmap*) ; 

int
FUNC2(struct vmctx *ctx, vm_paddr_t *gpa, int *segid,
    vm_ooffset_t *segoff, size_t *len, int *prot, int *flags)
{
	struct vm_memmap memmap;
	int error;

	FUNC0(&memmap, sizeof(struct vm_memmap));
	memmap.gpa = *gpa;
	error = FUNC1(ctx->fd, VM_MMAP_GETNEXT, &memmap);
	if (error == 0) {
		*gpa = memmap.gpa;
		*segid = memmap.segid;
		*segoff = memmap.segoff;
		*len = memmap.len;
		*prot = memmap.prot;
		*flags = memmap.flags;
	}
	return (error);
}