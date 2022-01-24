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
typedef  int /*<<< orphan*/  uintmax_t ;
struct group {char const** gr_mem; scalar_t__ gr_gid; int /*<<< orphan*/  gr_passwd; int /*<<< orphan*/  gr_name; } ;

/* Variables and functions */
 char* FUNC0 (size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 

char *
FUNC5(const struct group *gr)
{
	const char *group_line_format = "%s:%s:%ju:";
	const char *sep;
	char *line;
	char *p;
	size_t line_size;
	int ndx;

	/* Calculate the length of the group line. */
	line_size = FUNC1(NULL, 0, group_line_format, gr->gr_name,
	    gr->gr_passwd, (uintmax_t)gr->gr_gid) + 1;
	if (gr->gr_mem != NULL) {
		for (ndx = 0; gr->gr_mem[ndx] != NULL; ndx++)
			line_size += FUNC4(gr->gr_mem[ndx]) + 1;
		if (ndx > 0)
			line_size--;
	}

	/* Create the group line and fill it. */
	if ((line = p = FUNC0(line_size)) == NULL)
		return (NULL);
	p += FUNC2(p, group_line_format, gr->gr_name, gr->gr_passwd,
	    (uintmax_t)gr->gr_gid);
	if (gr->gr_mem != NULL) {
		sep = "";
		for (ndx = 0; gr->gr_mem[ndx] != NULL; ndx++) {
			p = FUNC3(p, sep);
			p = FUNC3(p, gr->gr_mem[ndx]);
			sep = ",";
		}
	}

	return (line);
}