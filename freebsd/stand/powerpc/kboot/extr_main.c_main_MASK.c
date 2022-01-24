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
struct TYPE_2__ {int /*<<< orphan*/  arch_kexec_kseg_get; int /*<<< orphan*/  arch_loadaddr; int /*<<< orphan*/  arch_autoload; int /*<<< orphan*/  arch_readin; int /*<<< orphan*/  arch_copyout; int /*<<< orphan*/  arch_copyin; int /*<<< orphan*/  arch_getdev; } ;

/* Variables and functions */
 TYPE_1__ archsw ; 
 char* bootprog_info ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (size_t const) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  kboot_autoload ; 
 int /*<<< orphan*/  kboot_copyin ; 
 int /*<<< orphan*/  kboot_copyout ; 
 int /*<<< orphan*/  kboot_getdev ; 
 int /*<<< orphan*/  kboot_kseg_get ; 
 int /*<<< orphan*/  kboot_loadaddr ; 
 int /*<<< orphan*/  kboot_readin ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,void*) ; 

int
FUNC6(int argc, const char **argv)
{
	void *heapbase;
	const size_t heapsize = 15*1024*1024;
	const char *bootdev;

	/*
	 * Set the heap to one page after the end of the loader.
	 */
	heapbase = FUNC1(heapsize);
	FUNC5(heapbase, heapbase + heapsize);

	/*
	 * Set up console.
	 */
	FUNC0();

	/* Choose bootdev if provided */
	if (argc > 1)
		bootdev = argv[1];
	else
		bootdev = "";

	FUNC3("Boot device: %s\n", bootdev);

	archsw.arch_getdev = kboot_getdev;
	archsw.arch_copyin = kboot_copyin;
	archsw.arch_copyout = kboot_copyout;
	archsw.arch_readin = kboot_readin;
	archsw.arch_autoload = kboot_autoload;
	archsw.arch_loadaddr = kboot_loadaddr;
	archsw.arch_kexec_kseg_get = kboot_kseg_get;

	FUNC3("\n%s", bootprog_info);

	FUNC4("currdev", bootdev, 1);
	FUNC4("loaddev", bootdev, 1);
	FUNC4("LINES", "24", 1);
	FUNC4("usefdt", "1", 1);

	FUNC2();			/* doesn't return */

	return (0);
}