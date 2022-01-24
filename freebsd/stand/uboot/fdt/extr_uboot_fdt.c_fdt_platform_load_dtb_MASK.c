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
 scalar_t__ FUNC0 (char const*) ; 
 int FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 char* FUNC4 (char*) ; 

int
FUNC5(void)
{
	struct fdt_header *hdr;
	const char *s;
	char *p;
	int rv;

	/*
	 * If the U-boot environment contains a variable giving the address of a
	 * valid blob in memory, use it.  The U-boot README says the right
	 * variable for fdt data loaded into ram is fdt_addr_r, so try that
	 * first.  Board vendors also use both fdtaddr and fdt_addr names.
	 */
	if ((rv = FUNC1("fdt_addr_r")) == 0)
		goto exit;
	if ((rv = FUNC1("fdt_addr")) == 0)
		goto exit;
	if ((rv = FUNC1("fdtaddr")) == 0)
		goto exit;

	rv = 1;

	/*
	 * Try to get FDT filename first from loader env and then from u-boot env
	 */
	s = FUNC2("fdt_file");
	if (s == NULL)
		s = FUNC4("fdtfile");
	if (s == NULL)
		s = FUNC4("fdt_file");
	if (s != NULL && *s != '\0') {
		if (FUNC0(s) == 0) {
			FUNC3("Loaded DTB from file '%s'.\n", s);
			rv = 0;
			goto exit;
		}
	}

exit:
	return (rv);
}