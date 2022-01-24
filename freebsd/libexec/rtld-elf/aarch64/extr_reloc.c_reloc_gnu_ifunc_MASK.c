#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct Struct_RtldLockState {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  r_info; scalar_t__ r_offset; } ;
struct TYPE_13__ {int /*<<< orphan*/  st_info; } ;
struct TYPE_12__ {int gnu_ifunc; int pltrelasize; scalar_t__ relocbase; TYPE_3__* pltrela; } ;
typedef  TYPE_1__ Obj_Entry ;
typedef  TYPE_2__ Elf_Sym ;
typedef  TYPE_3__ Elf_Rela ;
typedef  int /*<<< orphan*/  Elf_Rel ;
typedef  scalar_t__ Elf_Addr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ R_AARCH64_JUMP_SLOT ; 
 scalar_t__ STT_GNU_IFUNC ; 
 int SYMLOOK_IN_PLT ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__ const**,int,int /*<<< orphan*/ *,struct Struct_RtldLockState*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct Struct_RtldLockState*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__,TYPE_1__ const*,TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  rtld_bind_lock ; 
 scalar_t__ FUNC6 (TYPE_1__ const*,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct Struct_RtldLockState*) ; 

int
FUNC8(Obj_Entry *obj, int flags,
   struct Struct_RtldLockState *lockstate)
{
	const Elf_Rela *relalim;
	const Elf_Rela *rela;
	Elf_Addr *where, target;
	const Elf_Sym *def;
	const Obj_Entry *defobj;

	if (!obj->gnu_ifunc)
		return (0);
	relalim = (const Elf_Rela *)((const char *)obj->pltrela + obj->pltrelasize);
	for (rela = obj->pltrela;  rela < relalim;  rela++) {
		if (FUNC1(rela->r_info) == R_AARCH64_JUMP_SLOT) {
			where = (Elf_Addr *)(obj->relocbase + rela->r_offset);
			def = FUNC3(FUNC0(rela->r_info), obj, &defobj,
			    SYMLOOK_IN_PLT | flags, NULL, lockstate);
			if (def == NULL)
				return (-1);
			if (FUNC2(def->st_info) != STT_GNU_IFUNC)
				continue;
			FUNC4(rtld_bind_lock, lockstate);
			target = (Elf_Addr)FUNC6(defobj, def);
			FUNC7(rtld_bind_lock, lockstate);
			FUNC5(where, target, defobj, obj,
			    (const Elf_Rel *)rela);
		}
	}
	obj->gnu_ifunc = false;
	return (0);
}