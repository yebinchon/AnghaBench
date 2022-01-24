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
struct TYPE_5__ {scalar_t__ r_offset; int /*<<< orphan*/  r_info; } ;
struct TYPE_4__ {int irelative; int pltrelsize; scalar_t__ relocbase; TYPE_2__* pltrel; } ;
typedef  int /*<<< orphan*/  RtldLockState ;
typedef  TYPE_1__ Obj_Entry ;
typedef  TYPE_2__ Elf_Rel ;
typedef  scalar_t__ Elf_Addr ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  R_386_IRELATIVE 128 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rtld_bind_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC4(Obj_Entry *obj, RtldLockState *lockstate)
{
    const Elf_Rel *rellim;
    const Elf_Rel *rel;
    Elf_Addr *where, target;

    if (!obj->irelative)
	return (0);
    rellim = (const Elf_Rel *)((const char *)obj->pltrel + obj->pltrelsize);
    for (rel = obj->pltrel;  rel < rellim;  rel++) {
	switch (FUNC0(rel->r_info)) {
	case R_386_IRELATIVE:
	  where = (Elf_Addr *)(obj->relocbase + rel->r_offset);
	  FUNC2(rtld_bind_lock, lockstate);
	  target = FUNC1(obj->relocbase + *where);
	  FUNC3(rtld_bind_lock, lockstate);
	  *where = target;
	  break;
	}
    }
    obj->irelative = false;
    return (0);
}