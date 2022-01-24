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
struct fdt_header {int dummy; } ;

/* Variables and functions */
 struct fdt_header* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct fdt_header*) ; 
 int /*<<< orphan*/  fdtdtb ; 
 int /*<<< orphan*/  FUNC2 (char*,struct fdt_header*) ; 

int
FUNC3(void)
{
	struct fdt_header *hdr;

	hdr = FUNC0(&fdtdtb);
	if (hdr == NULL)
		return (1);
	if (FUNC1(hdr) != 0)
		return (1);
	FUNC2("Using DTB provided by EFI at %p.\n", hdr);

	return (0);
}