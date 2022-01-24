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
typedef  int /*<<< orphan*/  intmax_t ;
struct TYPE_14__ {scalar_t__ st_name; scalar_t__ st_value; } ;
struct TYPE_13__ {size_t local_gotno; size_t gotsym; scalar_t__ strtab; int /*<<< orphan*/  path; scalar_t__ relocbase; scalar_t__* pltgot; } ;
struct TYPE_12__ {int /*<<< orphan*/  env; } ;
typedef  TYPE_1__ RtldLockState ;
typedef  TYPE_2__ Obj_Entry ;
typedef  TYPE_3__ Elf_Sym ;
typedef  size_t Elf_Size ;
typedef  scalar_t__ Elf_Addr ;

/* Variables and functions */
 int /*<<< orphan*/  SYMLOOK_IN_PLT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,void*,void*) ; 
 TYPE_3__* FUNC1 (size_t,TYPE_2__*,TYPE_2__ const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  ld_bind_not ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  rtld_bind_lock ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Elf_Addr
FUNC7(Obj_Entry *obj, Elf_Size reloff)
{
        Elf_Addr *got = obj->pltgot;
        const Elf_Sym *def;
        const Obj_Entry *defobj;
        Elf_Addr *where;
        Elf_Addr target;
        RtldLockState lockstate;

	FUNC4(rtld_bind_lock, &lockstate);
	if (FUNC6(lockstate.env, 0) != 0)
		FUNC3(rtld_bind_lock, &lockstate);

	where = &got[obj->local_gotno + reloff - obj->gotsym];
        def = FUNC1(reloff, obj, &defobj, SYMLOOK_IN_PLT, NULL,
           &lockstate);
        if (def == NULL)
		FUNC5();

        target = (Elf_Addr)(defobj->relocbase + def->st_value);
        FUNC0("bind now/fixup at %s sym # %jd in %s --> was=%p new=%p",
	    obj->path,
	    (intmax_t)reloff, defobj->strtab + def->st_name, 
	    (void *)*where, (void *)target);
	if (!ld_bind_not)
		*where = target;
	FUNC2(rtld_bind_lock, &lockstate);
	return (Elf_Addr)target;
}