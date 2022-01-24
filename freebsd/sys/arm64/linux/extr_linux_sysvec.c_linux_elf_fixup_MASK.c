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
struct image_params {int dummy; } ;
typedef  int /*<<< orphan*/  register_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int (*) (int /*<<< orphan*/ **,struct image_params*),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sysvec ; 
 int /*<<< orphan*/  todo ; 

__attribute__((used)) static int
FUNC1(register_t **stack_base, struct image_params *imgp)
{

	FUNC0(sysvec, linux_elf_fixup, todo);

	return (0);
}