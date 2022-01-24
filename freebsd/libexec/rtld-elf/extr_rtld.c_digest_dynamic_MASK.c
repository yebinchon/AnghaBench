#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Obj_Entry ;
typedef  int /*<<< orphan*/  Elf_Dyn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void
FUNC2(Obj_Entry *obj, int early)
{
	const Elf_Dyn *dyn_rpath;
	const Elf_Dyn *dyn_soname;
	const Elf_Dyn *dyn_runpath;

	FUNC0(obj, early, &dyn_rpath, &dyn_soname, &dyn_runpath);
	FUNC1(obj, dyn_rpath, dyn_soname, dyn_runpath);
}