#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  r_info; scalar_t__ r_offset; } ;
struct TYPE_9__ {scalar_t__ st_value; } ;
struct TYPE_8__ {int pltrelasize; scalar_t__ relocbase; TYPE_3__* pltrela; } ;
typedef  int /*<<< orphan*/  RtldLockState ;
typedef  TYPE_1__ Obj_Entry ;
typedef  TYPE_2__ Elf_Sym ;
typedef  TYPE_3__ Elf_Rela ;
typedef  int /*<<< orphan*/  Elf_Addr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  R_RISCV_JUMP_SLOT 128 
 int SYMLOOK_IN_PLT ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__ const**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC5(Obj_Entry *obj, int flags, RtldLockState *lockstate)
{
	const Obj_Entry *defobj;
	const Elf_Rela *relalim;
	const Elf_Rela *rela;
	const Elf_Sym *def;

	relalim = (const Elf_Rela *)((const char *)obj->pltrela +
	    obj->pltrelasize);
	for (rela = obj->pltrela; rela < relalim; rela++) {
		Elf_Addr *where;

		where = (Elf_Addr *)(obj->relocbase + rela->r_offset);
		switch(FUNC1(rela->r_info)) {
		case R_RISCV_JUMP_SLOT:
			def = FUNC4(FUNC0(rela->r_info), obj,
			    &defobj, SYMLOOK_IN_PLT | flags, NULL, lockstate);
			if (def == NULL) {
				FUNC3("reloc_jmpslots: sym not found");
				return (-1);
			}

			*where = (Elf_Addr)(defobj->relocbase + def->st_value);
			break;
		default:
			FUNC2("Unknown relocation type %x in jmpslot",
			    (unsigned int)FUNC1(rela->r_info));
			return (-1);
		}
	}

	return (0);
}