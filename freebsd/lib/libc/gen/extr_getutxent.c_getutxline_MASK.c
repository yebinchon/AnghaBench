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
struct utmpx {int /*<<< orphan*/  ut_line; } ;
struct futx {int fu_type; int /*<<< orphan*/  fu_line; } ;

/* Variables and functions */
#define  LOGIN_PROCESS 129 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
#define  USER_PROCESS 128 
 struct utmpx* FUNC1 (struct futx*) ; 
 scalar_t__ FUNC2 (struct futx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct utmpx *
FUNC4(const struct utmpx *line)
{
	struct futx fu;

	for (;;) {
		if (FUNC2(&fu) != 0)
			return (NULL);

		switch (fu.fu_type) {
		case USER_PROCESS:
		case LOGIN_PROCESS:
			if (FUNC3(fu.fu_line, line->ut_line,
			    FUNC0(sizeof(fu.fu_line), sizeof(line->ut_line))) ==
			    0)
				goto found;
			break;
		}
	}

found:
	return (FUNC1(&fu));
}