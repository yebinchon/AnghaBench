#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct Struct_RtldLockState {int dummy; } ;
struct TYPE_5__ {scalar_t__ r_offset; scalar_t__ r_addend; int /*<<< orphan*/  r_info; } ;
struct TYPE_4__ {int irelative; int pltrelasize; scalar_t__ relocbase; TYPE_2__* pltrela; } ;
typedef  TYPE_1__ Obj_Entry ;
typedef  TYPE_2__ Elf_Rela ;
typedef  int /*<<< orphan*/  Elf_Addr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ R_AARCH64_IRELATIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct Struct_RtldLockState*) ; 
 int /*<<< orphan*/  rtld_bind_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct Struct_RtldLockState*) ; 

int
FUNC4(Obj_Entry *obj, struct Struct_RtldLockState *lockstate)
{
	const Elf_Rela *relalim;
	const Elf_Rela *rela;
	Elf_Addr *where, target, *ptr;

	if (!obj->irelative)
		return (0);
	relalim = (const Elf_Rela *)((const char *)obj->pltrela + obj->pltrelasize);
	for (rela = obj->pltrela;  rela < relalim;  rela++) {
		if (FUNC0(rela->r_info) == R_AARCH64_IRELATIVE) {
			ptr = (Elf_Addr *)(obj->relocbase + rela->r_addend);
			where = (Elf_Addr *)(obj->relocbase + rela->r_offset);
			FUNC2(rtld_bind_lock, lockstate);
			target = FUNC1(ptr);
			FUNC3(rtld_bind_lock, lockstate);
			*where = target;
		}
	}
	obj->irelative = false;
	return (0);
}