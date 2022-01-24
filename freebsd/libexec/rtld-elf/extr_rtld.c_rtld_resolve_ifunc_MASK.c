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
typedef  int /*<<< orphan*/  Elf_Sym ;
typedef  scalar_t__ Elf_Addr ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

void *
FUNC2(const Obj_Entry *obj, const Elf_Sym *def)
{
	void *ptr;
	Elf_Addr target;

	ptr = (void *)FUNC1(def, obj);
	target = FUNC0(ptr);
	return ((void *)target);
}