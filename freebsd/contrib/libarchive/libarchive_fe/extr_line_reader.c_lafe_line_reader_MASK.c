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
struct lafe_line_reader {int nullSeparator; int buff_length; int /*<<< orphan*/ * buff; int /*<<< orphan*/  buff_end; int /*<<< orphan*/  line_end; int /*<<< orphan*/  line_start; int /*<<< orphan*/ * f; int /*<<< orphan*/  pathname; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct lafe_line_reader* FUNC0 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/ * stdin ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

struct lafe_line_reader *
FUNC5(const char *pathname, int nullSeparator)
{
	struct lafe_line_reader *lr;

	lr = FUNC0(1, sizeof(*lr));
	if (lr == NULL)
		FUNC2(1, ENOMEM, "Can't open %s", pathname);

	lr->nullSeparator = nullSeparator;
	lr->pathname = FUNC4(pathname);

	if (FUNC3(pathname, "-") == 0)
		lr->f = stdin;
	else
		lr->f = FUNC1(pathname, "r");
	if (lr->f == NULL)
		FUNC2(1, errno, "Couldn't open %s", pathname);
	lr->buff_length = 8192;
	lr->line_start = lr->line_end = lr->buff_end = *(lr->buff = NULL);

	return (lr);
}