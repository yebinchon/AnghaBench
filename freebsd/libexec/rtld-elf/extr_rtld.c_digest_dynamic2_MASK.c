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
struct TYPE_11__ {int d_val; } ;
struct TYPE_13__ {TYPE_1__ d_un; } ;
struct TYPE_12__ {char const* runpath; int strtab; char const* rpath; scalar_t__ z_origin; } ;
typedef  TYPE_2__ Obj_Entry ;
typedef  TYPE_3__ Elf_Dyn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 void* FUNC2 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(Obj_Entry *obj, const Elf_Dyn *dyn_rpath,
    const Elf_Dyn *dyn_soname, const Elf_Dyn *dyn_runpath)
{

	if (obj->z_origin && !FUNC0(obj))
		FUNC3();

	if (dyn_runpath != NULL) {
		obj->runpath = (const char *)obj->strtab + dyn_runpath->d_un.d_val;
		obj->runpath = FUNC2(obj, obj->runpath);
	} else if (dyn_rpath != NULL) {
		obj->rpath = (const char *)obj->strtab + dyn_rpath->d_un.d_val;
		obj->rpath = FUNC2(obj, obj->rpath);
	}
	if (dyn_soname != NULL)
		FUNC1(obj, obj->strtab + dyn_soname->d_un.d_val);
}