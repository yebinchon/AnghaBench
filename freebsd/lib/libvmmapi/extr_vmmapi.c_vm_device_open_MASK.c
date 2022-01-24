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

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static int
FUNC6(const char *name)
{
	int fd, len;
	char *vmfile;

	len = FUNC5("/dev/vmm/") + FUNC5(name) + 1;
	vmfile = FUNC2(len);
	FUNC0(vmfile != NULL);
	FUNC4(vmfile, len, "/dev/vmm/%s", name);

	/* Open the device file */
	fd = FUNC3(vmfile, O_RDWR, 0);

	FUNC1(vmfile);
	return (fd);
}