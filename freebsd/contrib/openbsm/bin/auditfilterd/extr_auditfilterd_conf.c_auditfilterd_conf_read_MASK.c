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
struct auditfilter_module_list {int dummy; } ;
struct auditfilter_module {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EINVAL ; 
 int LINE_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct auditfilter_module_list*,struct auditfilter_module*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  am_list ; 
 int /*<<< orphan*/  FUNC1 (struct auditfilter_module_list*) ; 
 struct auditfilter_module* FUNC2 (char const*,int,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7(const char *filename, FILE *fp,
    struct auditfilter_module_list *list)
{
	int error, linenumber, syntaxerror;
	struct auditfilter_module *am;
	char buffer[LINE_MAX];

	syntaxerror = 0;
	linenumber = 0;
	while (!FUNC3(fp) && !FUNC4(fp)) {
		if (FUNC5(buffer, LINE_MAX, fp) == NULL)
			break;
		linenumber++;
		if (buffer[0] == '#' || FUNC6(buffer) < 1)
			continue;
		buffer[FUNC6(buffer)-1] = '\0';
		am = FUNC2(filename, linenumber, buffer);
		if (am == NULL) {
			syntaxerror = 1;
			break;
		}
		FUNC0(list, am, am_list);
	}

	/*
	 * File I/O error.
	 */
	if (FUNC4(fp)) {
		error = errno;
		FUNC1(list);
		errno = error;
		return (-1);
	}

	/*
	 * Syntax error.
	 */
	if (syntaxerror) {
		FUNC1(list);
		errno = EINVAL;
		return (-1);
	}
	return (0);
}