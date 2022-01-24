#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__* e_ident; scalar_t__ e_machine; } ;
struct TYPE_8__ {int /*<<< orphan*/  program; TYPE_1__ nlehdr; int /*<<< orphan*/  pmfd; } ;
typedef  TYPE_2__ kvm_t ;
struct TYPE_9__ {scalar_t__ e_type; scalar_t__ e_machine; } ;
typedef  int /*<<< orphan*/  GElf_Phdr ;
typedef  TYPE_3__ GElf_Ehdr ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 size_t EI_CLASS ; 
 int /*<<< orphan*/  ELF_C_READ ; 
 scalar_t__ ELF_K_ELF ; 
 scalar_t__ ET_CORE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC1 (size_t,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 

int
FUNC11(kvm_t *kd, size_t *phnump, GElf_Phdr **phdrp)
{
	GElf_Ehdr ehdr;
	GElf_Phdr *phdr;
	Elf *elf;
	size_t i, phnum;

	elf = FUNC2(kd->pmfd, ELF_C_READ, NULL);
	if (elf == NULL) {
		FUNC0(kd, kd->program, "%s", FUNC4(0));
		return (-1);
	}
	if (FUNC6(elf) != ELF_K_ELF) {
		FUNC0(kd, kd->program, "invalid core");
		goto bad;
	}
	if (FUNC8(elf) != kd->nlehdr.e_ident[EI_CLASS]) {
		FUNC0(kd, kd->program, "invalid core");
		goto bad;
	}
	if (FUNC9(elf, &ehdr) == NULL) {
		FUNC0(kd, kd->program, "%s", FUNC4(0));
		goto bad;
	}
	if (ehdr.e_type != ET_CORE) {
		FUNC0(kd, kd->program, "invalid core");
		goto bad;
	}
	if (ehdr.e_machine != kd->nlehdr.e_machine) {
		FUNC0(kd, kd->program, "invalid core");
		goto bad;
	}

	if (FUNC5(elf, &phnum) == -1) {
		FUNC0(kd, kd->program, "%s", FUNC4(0));
		goto bad;
	}

	phdr = FUNC1(phnum, sizeof(*phdr));
	if (phdr == NULL) {
		FUNC0(kd, kd->program, "failed to allocate phdrs");
		goto bad;
	}

	for (i = 0; i < phnum; i++) {
		if (FUNC10(elf, i, &phdr[i]) == NULL) {
			FUNC7(phdr);
			FUNC0(kd, kd->program, "%s", FUNC4(0));
			goto bad;
		}
	}
	FUNC3(elf);
	*phnump = phnum;
	*phdrp = phdr;
	return (0);

bad:
	FUNC3(elf);
	return (-1);
}