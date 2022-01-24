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
struct objfile {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 void* kernel_file_addr ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 void* linker_files_addr ; 
 void* module_path_addr ; 
 void* off_address ; 
 void* off_filename ; 
 void* off_next ; 
 int /*<<< orphan*/  off_pathname ; 

void
FUNC3 (struct objfile *objfile)
{

	if (!FUNC0())
		return;

	/*
	 * Compute offsets of relevant members in struct linker_file
	 * and the addresses of global variables.  Don't warn about
	 * kernels that don't have 'pathname' in the linker_file
	 * struct since 6.x kernels don't have it.
	 */
	off_address = FUNC1("&((struct linker_file *)0)->address");
	off_filename = FUNC1("&((struct linker_file *)0)->filename");
	off_pathname = FUNC2("&((struct linker_file *)0)->pathname");
	off_next = FUNC1("&((struct linker_file *)0)->link.tqe_next");
	module_path_addr = FUNC1("linker_path");
	linker_files_addr = FUNC1("&linker_files.tqh_first");
	kernel_file_addr = FUNC1("&linker_kernel_file");
}