#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int* e_ident; } ;
struct TYPE_5__ {int /*<<< orphan*/  program; TYPE_2__ nlehdr; int /*<<< orphan*/  nlfd; } ;
typedef  TYPE_1__ kvm_t ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 size_t EI_DATA ; 
#define  ELFDATA2LSB 129 
#define  ELFDATA2MSB 128 
 int /*<<< orphan*/  ELF_C_READ ; 
 scalar_t__ ELF_K_ELF ; 
 int /*<<< orphan*/  EV_CURRENT ; 
 scalar_t__ EV_NONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static int
FUNC7(kvm_t *kd)
{
	Elf *elf;

	if (FUNC5(EV_CURRENT) == EV_NONE) {
		FUNC0(kd, kd->program, "Unsupported libelf");
		return (-1);
	}
	elf = FUNC1(kd->nlfd, ELF_C_READ, NULL);
	if (elf == NULL) {
		FUNC0(kd, kd->program, "%s", FUNC3(0));
		return (-1);
	}
	if (FUNC4(elf) != ELF_K_ELF) {
		FUNC0(kd, kd->program, "kernel is not an ELF file");
		return (-1);
	}
	if (FUNC6(elf, &kd->nlehdr) == NULL) {
		FUNC0(kd, kd->program, "%s", FUNC3(0));
		FUNC2(elf);
		return (-1);
	}
	FUNC2(elf);

	switch (kd->nlehdr.e_ident[EI_DATA]) {
	case ELFDATA2LSB:
	case ELFDATA2MSB:
		return (0);
	default:
		FUNC0(kd, kd->program,
		    "unsupported ELF data encoding for kernel");
		return (-1);
	}
}