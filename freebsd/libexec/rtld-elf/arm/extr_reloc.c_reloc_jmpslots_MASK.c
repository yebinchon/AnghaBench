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
struct TYPE_13__ {int /*<<< orphan*/  r_info; scalar_t__ r_offset; } ;
struct TYPE_12__ {scalar_t__ st_value; } ;
struct TYPE_11__ {int pltrelsize; int jmpslots_done; scalar_t__ relocbase; TYPE_3__* pltrel; } ;
typedef  int /*<<< orphan*/  RtldLockState ;
typedef  TYPE_1__ Obj_Entry ;
typedef  TYPE_2__ Elf_Sym ;
typedef  TYPE_3__ Elf_Rel ;
typedef  scalar_t__ Elf_Addr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ R_ARM_JUMP_SLOT ; 
 int SYMLOOK_IN_PLT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__ const**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__,TYPE_1__ const*,TYPE_1__*,TYPE_3__ const*) ; 

int
FUNC6(Obj_Entry *obj, int flags, RtldLockState *lockstate)
{
	const Obj_Entry *defobj;
	const Elf_Rel *rellim;
	const Elf_Rel *rel;
	const Elf_Sym *def;
	Elf_Addr *where;
	Elf_Addr target;
	
	rellim = (const Elf_Rel *)((const char *)obj->pltrel + obj->pltrelsize);
	for (rel = obj->pltrel; rel < rellim; rel++) {
		FUNC2(FUNC1(rel->r_info) == R_ARM_JUMP_SLOT);
		where = (Elf_Addr *)(obj->relocbase + rel->r_offset);
		def = FUNC4(FUNC0(rel->r_info), obj, &defobj,
		    SYMLOOK_IN_PLT | flags, NULL, lockstate);
		if (def == NULL) {
			FUNC3("reloc_jmpslots: sym not found");
			return (-1);
		}
		
		target = (Elf_Addr)(defobj->relocbase + def->st_value);		
		FUNC5(where, target, defobj, obj,
		    (const Elf_Rel *) rel);
	}
	
	obj->jmpslots_done = true;
	
	return (0);
}