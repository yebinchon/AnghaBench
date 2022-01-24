#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_13__ {scalar_t__ version; scalar_t__ msgbufsize; scalar_t__ bitmapsize; scalar_t__ ptesize; void* dmapend; void* dmapbase; void* kernbase; int /*<<< orphan*/  magic; } ;
struct vmstate {int pte_size; TYPE_3__ hdr; } ;
typedef  scalar_t__ off_t ;
struct TYPE_11__ {scalar_t__* e_ident; int e_flags; } ;
struct TYPE_12__ {int /*<<< orphan*/  program; int /*<<< orphan*/  pmfd; TYPE_1__ nlehdr; struct vmstate* vmst; } ;
typedef  TYPE_2__ kvm_t ;

/* Variables and functions */
 int EF_MIPS_ABI2 ; 
 size_t EI_CLASS ; 
 scalar_t__ ELFCLASS64 ; 
 int /*<<< orphan*/  MINIDUMP_MAGIC ; 
 scalar_t__ MINIDUMP_VERSION ; 
 scalar_t__ MIPS_PAGE_SIZE ; 
 void* FUNC0 (TYPE_2__*,scalar_t__) ; 
 void* FUNC1 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 struct vmstate* FUNC3 (TYPE_2__*,int) ; 
 int FUNC4 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 int FUNC5 (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC9(kvm_t *kd)
{
	struct vmstate *vmst;
	off_t off, sparse_off;

	vmst = FUNC3(kd, sizeof(*vmst));
	if (vmst == NULL) {
		FUNC2(kd, kd->program, "cannot allocate vm");
		return (-1);
	}

	kd->vmst = vmst;

	if (kd->nlehdr.e_ident[EI_CLASS] == ELFCLASS64 ||
	    kd->nlehdr.e_flags & EF_MIPS_ABI2)
		vmst->pte_size = 64;
	else
		vmst->pte_size = 32;

	if (FUNC7(kd->pmfd, &vmst->hdr,
	    sizeof(vmst->hdr), 0) != sizeof(vmst->hdr)) {
		FUNC2(kd, kd->program, "cannot read dump header");
		return (-1);
	}

	if (FUNC8(MINIDUMP_MAGIC, vmst->hdr.magic,
	    sizeof(vmst->hdr.magic)) != 0) {
		FUNC2(kd, kd->program, "not a minidump for this platform");
		return (-1);
	}
	vmst->hdr.version = FUNC0(kd, vmst->hdr.version);
	if (vmst->hdr.version != MINIDUMP_VERSION) {
		FUNC2(kd, kd->program, "wrong minidump version. "
		    "Expected %d got %d", MINIDUMP_VERSION, vmst->hdr.version);
		return (-1);
	}
	vmst->hdr.msgbufsize = FUNC0(kd, vmst->hdr.msgbufsize);
	vmst->hdr.bitmapsize = FUNC0(kd, vmst->hdr.bitmapsize);
	vmst->hdr.ptesize = FUNC0(kd, vmst->hdr.ptesize);
	vmst->hdr.kernbase = FUNC1(kd, vmst->hdr.kernbase);
	vmst->hdr.dmapbase = FUNC1(kd, vmst->hdr.dmapbase);
	vmst->hdr.dmapend = FUNC1(kd, vmst->hdr.dmapend);

	/* Skip header and msgbuf */
	off = MIPS_PAGE_SIZE + FUNC6(vmst->hdr.msgbufsize);

	sparse_off = off + FUNC6(vmst->hdr.bitmapsize) +
	    FUNC6(vmst->hdr.ptesize);
	if (FUNC5(kd, vmst->hdr.bitmapsize, off, sparse_off,
	    MIPS_PAGE_SIZE, sizeof(uint32_t)) == -1) {
		return (-1);
	}
	off += FUNC6(vmst->hdr.bitmapsize);

	if (FUNC4(kd, vmst->hdr.ptesize, off) == -1) {
		return (-1);
	}
	off += FUNC6(vmst->hdr.ptesize);

	return (0);
}