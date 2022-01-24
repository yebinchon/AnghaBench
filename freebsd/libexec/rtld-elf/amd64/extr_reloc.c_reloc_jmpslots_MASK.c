#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  r_info; scalar_t__ r_addend; scalar_t__ r_offset; } ;
struct TYPE_11__ {scalar_t__ st_value; int /*<<< orphan*/  st_info; } ;
struct TYPE_10__ {int jmpslots_done; int pltrelasize; int gnu_ifunc; scalar_t__ relocbase; TYPE_3__* pltrela; } ;
typedef  int /*<<< orphan*/  RtldLockState ;
typedef  TYPE_1__ Obj_Entry ;
typedef  TYPE_2__ Elf_Sym ;
typedef  TYPE_3__ Elf_Rela ;
typedef  int /*<<< orphan*/  Elf_Rel ;
typedef  int /*<<< orphan*/  Elf_Addr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  R_X86_64_IRELATIVE 129 
#define  R_X86_64_JMP_SLOT 128 
 int /*<<< orphan*/  STT_GNU_IFUNC ; 
 int SYMLOOK_IN_PLT ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__ const**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__ const*,TYPE_1__*,int /*<<< orphan*/  const*) ; 

int
FUNC6(Obj_Entry *obj, int flags, RtldLockState *lockstate)
{
    const Elf_Rela *relalim;
    const Elf_Rela *rela;

    if (obj->jmpslots_done)
	return 0;
    relalim = (const Elf_Rela *)((const char *)obj->pltrela + obj->pltrelasize);
    for (rela = obj->pltrela;  rela < relalim;  rela++) {
	Elf_Addr *where, target;
	const Elf_Sym *def;
	const Obj_Entry *defobj;

	switch (FUNC1(rela->r_info)) {
	case R_X86_64_JMP_SLOT:
	  where = (Elf_Addr *)(obj->relocbase + rela->r_offset);
	  def = FUNC4(FUNC0(rela->r_info), obj, &defobj,
		SYMLOOK_IN_PLT | flags, NULL, lockstate);
	  if (def == NULL)
	      return (-1);
	  if (FUNC2(def->st_info) == STT_GNU_IFUNC) {
	      obj->gnu_ifunc = true;
	      continue;
	  }
	  target = (Elf_Addr)(defobj->relocbase + def->st_value + rela->r_addend);
	  FUNC5(where, target, defobj, obj, (const Elf_Rel *)rela);
	  break;

	case R_X86_64_IRELATIVE:
	  break;

	default:
	  FUNC3("Unknown relocation type %x in PLT",
	    (unsigned int)FUNC1(rela->r_info));
	  return (-1);
	}
    }
    obj->jmpslots_done = true;
    return 0;
}