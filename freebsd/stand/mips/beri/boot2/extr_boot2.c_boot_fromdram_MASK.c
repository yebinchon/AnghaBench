#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ e_entry; } ;
typedef  TYPE_1__ Elf64_Ehdr ;

/* Variables and functions */
 void* DRAM_KERNEL_ADDR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  beri_argc ; 
 int /*<<< orphan*/  beri_argv ; 
 int /*<<< orphan*/  beri_envv ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static void
FUNC3(void)
{
    void *kaddr = DRAM_KERNEL_ADDR;	/* XXXRW: Something better here. */
    Elf64_Ehdr *ehp = kaddr;

    if (!FUNC0(*ehp)) {
	FUNC2("Invalid %s\n", "format");
	return;
    }
    FUNC1((void *)ehp->e_entry, beri_argc, beri_argv, beri_envv);
}