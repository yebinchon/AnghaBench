#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_10__ {scalar_t__ version; scalar_t__ msgbufsize; scalar_t__ bitmapsize; scalar_t__ ptesize; scalar_t__ kernbase; scalar_t__ arch; scalar_t__ mmuformat; int /*<<< orphan*/  magic; } ;
struct vmstate {TYPE_2__ hdr; } ;
typedef  scalar_t__ off_t ;
struct TYPE_9__ {int /*<<< orphan*/  program; int /*<<< orphan*/  pmfd; struct vmstate* vmst; } ;
typedef  TYPE_1__ kvm_t ;

/* Variables and functions */
 scalar_t__ ARM_PAGE_SIZE ; 
 int /*<<< orphan*/  MINIDUMP_MAGIC ; 
 scalar_t__ MINIDUMP_MMU_FORMAT_UNKNOWN ; 
 scalar_t__ MINIDUMP_MMU_FORMAT_V6 ; 
 scalar_t__ MINIDUMP_VERSION ; 
 void* FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 struct vmstate* FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 int FUNC4 (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(kvm_t *kd)
{
	struct vmstate *vmst;
	off_t off, sparse_off;

	vmst = FUNC2(kd, sizeof(*vmst));
	if (vmst == NULL) {
		FUNC1(kd, kd->program, "cannot allocate vm");
		return (-1);
	}

	kd->vmst = vmst;

	if (FUNC6(kd->pmfd, &vmst->hdr,
	    sizeof(vmst->hdr), 0) != sizeof(vmst->hdr)) {
		FUNC1(kd, kd->program, "cannot read dump header");
		return (-1);
	}

	if (FUNC7(MINIDUMP_MAGIC, vmst->hdr.magic,
	    sizeof(vmst->hdr.magic)) != 0) {
		FUNC1(kd, kd->program, "not a minidump for this platform");
		return (-1);
	}
	vmst->hdr.version = FUNC0(kd, vmst->hdr.version);
	if (vmst->hdr.version != MINIDUMP_VERSION) {
		FUNC1(kd, kd->program, "wrong minidump version. "
		    "Expected %d got %d", MINIDUMP_VERSION, vmst->hdr.version);
		return (-1);
	}
	vmst->hdr.msgbufsize = FUNC0(kd, vmst->hdr.msgbufsize);
	vmst->hdr.bitmapsize = FUNC0(kd, vmst->hdr.bitmapsize);
	vmst->hdr.ptesize = FUNC0(kd, vmst->hdr.ptesize);
	vmst->hdr.kernbase = FUNC0(kd, vmst->hdr.kernbase);
	vmst->hdr.arch = FUNC0(kd, vmst->hdr.arch);
	vmst->hdr.mmuformat = FUNC0(kd, vmst->hdr.mmuformat);
	if (vmst->hdr.mmuformat == MINIDUMP_MMU_FORMAT_UNKNOWN) {
		/* This is a safe default as 1K pages are not used. */
		vmst->hdr.mmuformat = MINIDUMP_MMU_FORMAT_V6;
	}

	/* Skip header and msgbuf */
	off = ARM_PAGE_SIZE + FUNC5(vmst->hdr.msgbufsize);

	sparse_off = off + FUNC5(vmst->hdr.bitmapsize) +
	    FUNC5(vmst->hdr.ptesize);
	if (FUNC4(kd, vmst->hdr.bitmapsize, off, sparse_off,
	    ARM_PAGE_SIZE, sizeof(uint32_t)) == -1) {
		return (-1);
	}
	off += FUNC5(vmst->hdr.bitmapsize);

	if (FUNC3(kd, vmst->hdr.ptesize, off) == -1) {
		return (-1);
	}
	off += FUNC5(vmst->hdr.ptesize);

	return (0);
}