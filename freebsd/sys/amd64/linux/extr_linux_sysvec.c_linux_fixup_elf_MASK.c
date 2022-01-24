#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct image_params {TYPE_1__* args; } ;
typedef  int /*<<< orphan*/  register_t ;
struct TYPE_2__ {scalar_t__ argc; } ;
typedef  int /*<<< orphan*/  Elf_Addr ;
typedef  int /*<<< orphan*/  Elf64_Addr ;

/* Variables and functions */
 int EFAULT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(register_t **stack_base, struct image_params *imgp)
{
	Elf_Addr *base;

	base = (Elf64_Addr *)*stack_base;
	base--;
	if (FUNC0(base, (uint64_t)imgp->args->argc) == -1)
		return (EFAULT);

	*stack_base = (register_t *)base;
	return (0);
}