#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_9__ {scalar_t__ version; scalar_t__ msgbufsize; scalar_t__ bitmapsize; scalar_t__ pmapsize; void* dmapend; void* dmapbase; void* dmapphys; void* kernbase; int /*<<< orphan*/  magic; } ;
struct vmstate {TYPE_2__ hdr; } ;
typedef  scalar_t__ off_t ;
struct TYPE_8__ {int /*<<< orphan*/  program; int /*<<< orphan*/  pmfd; struct vmstate* vmst; } ;
typedef  TYPE_1__ kvm_t ;

/* Variables and functions */
 int /*<<< orphan*/  MINIDUMP_MAGIC ; 
 scalar_t__ MINIDUMP_VERSION ; 
 scalar_t__ RISCV_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 struct vmstate* FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 int FUNC3 (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 void* FUNC4 (scalar_t__) ; 
 void* FUNC5 (void*) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC9(kvm_t *kd)
{
	struct vmstate *vmst;
	off_t off, sparse_off;

	vmst = FUNC1(kd, sizeof(*vmst));
	if (vmst == NULL) {
		FUNC0(kd, kd->program, "cannot allocate vm");
		return (-1);
	}
	kd->vmst = vmst;
	if (FUNC6(kd->pmfd, &vmst->hdr, sizeof(vmst->hdr), 0) !=
	    sizeof(vmst->hdr)) {
		FUNC0(kd, kd->program, "cannot read dump header");
		return (-1);
	}
	if (FUNC8(MINIDUMP_MAGIC, vmst->hdr.magic,
	    sizeof(vmst->hdr.magic)) != 0) {
		FUNC0(kd, kd->program, "not a minidump for this platform");
		return (-1);
	}

	vmst->hdr.version = FUNC4(vmst->hdr.version);
	if (vmst->hdr.version != MINIDUMP_VERSION) {
		FUNC0(kd, kd->program, "wrong minidump version. "
		    "Expected %d got %d", MINIDUMP_VERSION, vmst->hdr.version);
		return (-1);
	}
	vmst->hdr.msgbufsize = FUNC4(vmst->hdr.msgbufsize);
	vmst->hdr.bitmapsize = FUNC4(vmst->hdr.bitmapsize);
	vmst->hdr.pmapsize = FUNC4(vmst->hdr.pmapsize);
	vmst->hdr.kernbase = FUNC5(vmst->hdr.kernbase);
	vmst->hdr.dmapphys = FUNC5(vmst->hdr.dmapphys);
	vmst->hdr.dmapbase = FUNC5(vmst->hdr.dmapbase);
	vmst->hdr.dmapend = FUNC5(vmst->hdr.dmapend);

	/* Skip header and msgbuf */
	off = RISCV_PAGE_SIZE + FUNC7(vmst->hdr.msgbufsize);

	/* build physical address lookup table for sparse pages */
	sparse_off = off + FUNC7(vmst->hdr.bitmapsize) +
	    FUNC7(vmst->hdr.pmapsize);
	if (FUNC3(kd, vmst->hdr.bitmapsize, off, sparse_off,
	    RISCV_PAGE_SIZE, sizeof(uint64_t)) == -1) {
		return (-1);
	}
	off += FUNC7(vmst->hdr.bitmapsize);

	if (FUNC2(kd, vmst->hdr.pmapsize, off) == -1) {
		return (-1);
	}
	off += FUNC7(vmst->hdr.pmapsize);

	return (0);
}