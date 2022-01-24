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
typedef  scalar_t__ vm_size_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  scalar_t__ u_long ;
typedef  int phandle_t ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/ * ocotp_regs ; 
 scalar_t__ ocotp_size ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC5(void)
{
	phandle_t child, root;
	u_long base, size;

	if ((root = FUNC0("/")) == -1)
		goto fatal;
	if ((child = FUNC1(root, "fsl,imx6q-ocotp", 0)) == 0)
		goto fatal;
	if (FUNC2(child, &base, &size) != 0)
		goto fatal;

	ocotp_size = (vm_size_t)size;

	if ((ocotp_regs = FUNC4((vm_offset_t)base, ocotp_size)) == NULL)
		goto fatal;

	return;
fatal:
	FUNC3("cannot find/map the ocotp registers");
}