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
 scalar_t__ FUNC0 (struct fdt_header*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct fdt_header*) ; 
 scalar_t__ FUNC2 (char const*,char**,int) ; 
 char* FUNC3 (char const*) ; 

__attribute__((used)) static int
FUNC4(const char *var)
{
	struct fdt_header *hdr;
	const char *s;
	char *p;

	s = FUNC3(var);
	if (s == NULL || *s == '\0')
		return (1);

	hdr = (struct fdt_header *)FUNC2(s, &p, 16);
	if (*p != '\0')
		return (1);

	if (FUNC0(hdr) == 0) {
		FUNC1("Using DTB provided by U-Boot at "
		    "address %p.\n", hdr);
		return (0);
	}

	return (1);
}