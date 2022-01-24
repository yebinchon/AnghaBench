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
struct TYPE_9__ {int version; int msgbufsize; int bitmapsize; int pmapsize; void* dmapend; void* dmapbase; void* kernbase; int /*<<< orphan*/  magic; } ;
struct vmstate {TYPE_2__ hdr; } ;
typedef  scalar_t__ off_t ;
struct TYPE_8__ {int /*<<< orphan*/  program; int /*<<< orphan*/  pmfd; struct vmstate* vmst; } ;
typedef  TYPE_1__ kvm_t ;

/* Variables and functions */
 scalar_t__ AMD64_PAGE_SIZE ; 
 int /*<<< orphan*/  MINIDUMP_MAGIC ; 
 int MINIDUMP_VERSION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 struct vmstate* FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (TYPE_1__*,int,scalar_t__) ; 
 int FUNC3 (TYPE_1__*,int,scalar_t__,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC4 (int) ; 
 void* FUNC5 (int) ; 
 void* FUNC6 (void*) ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
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
	if (FUNC7(kd->pmfd, &vmst->hdr, sizeof(vmst->hdr), 0) !=
	    sizeof(vmst->hdr)) {
		FUNC0(kd, kd->program, "cannot read dump header");
		return (-1);
	}
	if (FUNC8(MINIDUMP_MAGIC, vmst->hdr.magic, sizeof(vmst->hdr.magic)) != 0) {
		FUNC0(kd, kd->program, "not a minidump for this platform");
		return (-1);
	}

	/*
	 * NB: amd64 minidump header is binary compatible between version 1
	 * and version 2; this may not be the case for the future versions.
	 */
	vmst->hdr.version = FUNC5(vmst->hdr.version);
	if (vmst->hdr.version != MINIDUMP_VERSION && vmst->hdr.version != 1) {
		FUNC0(kd, kd->program, "wrong minidump version. expected %d got %d",
		    MINIDUMP_VERSION, vmst->hdr.version);
		return (-1);
	}
	vmst->hdr.msgbufsize = FUNC5(vmst->hdr.msgbufsize);
	vmst->hdr.bitmapsize = FUNC5(vmst->hdr.bitmapsize);
	vmst->hdr.pmapsize = FUNC5(vmst->hdr.pmapsize);
	vmst->hdr.kernbase = FUNC6(vmst->hdr.kernbase);
	vmst->hdr.dmapbase = FUNC6(vmst->hdr.dmapbase);
	vmst->hdr.dmapend = FUNC6(vmst->hdr.dmapend);

	/* Skip header and msgbuf */
	off = AMD64_PAGE_SIZE + FUNC4(vmst->hdr.msgbufsize);

	sparse_off = off + FUNC4(vmst->hdr.bitmapsize) +
	    FUNC4(vmst->hdr.pmapsize);
	if (FUNC3(kd, vmst->hdr.bitmapsize, off, sparse_off,
	    AMD64_PAGE_SIZE, sizeof(uint64_t)) == -1) {
		return (-1);
	}
	off += FUNC4(vmst->hdr.bitmapsize);

	if (FUNC2(kd, vmst->hdr.pmapsize, off) == -1) {
		return (-1);
	}
	off += FUNC4(vmst->hdr.pmapsize);

	return (0);
}