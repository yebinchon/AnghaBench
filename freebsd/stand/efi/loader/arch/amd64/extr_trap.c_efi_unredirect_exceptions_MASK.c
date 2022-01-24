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
struct amd64tss {scalar_t__ tss_ist1; } ;
typedef  int /*<<< orphan*/  register_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  fw_gdt ; 
 int /*<<< orphan*/  fw_idt ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int ist ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ lidt_pa ; 
 scalar_t__ loader_gdt_pa ; 
 scalar_t__ loader_tss ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tss_fw_seg ; 
 scalar_t__ tss_pa ; 

__attribute__((used)) static void
FUNC6(void)
{
	register_t rfl;

	if (lidt_pa == 0)
		return;

	rfl = FUNC2();
	if (ist != 0)
		(&(((struct amd64tss *)tss_pa)->tss_ist1))[ist - 1] = 0;
	if (loader_gdt_pa != 0)
		FUNC0(&fw_gdt);
	if (loader_tss != 0)
		FUNC5(tss_fw_seg);
	FUNC4(&fw_idt);
	FUNC3(rfl);
	FUNC1();
}