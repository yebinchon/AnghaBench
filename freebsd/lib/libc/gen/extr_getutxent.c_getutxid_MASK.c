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
struct utmpx {int ut_type; int /*<<< orphan*/  ut_id; } ;
struct futx {int fu_type; int /*<<< orphan*/  fu_id; } ;

/* Variables and functions */
#define  DEAD_PROCESS 131 
#define  INIT_PROCESS 130 
#define  LOGIN_PROCESS 129 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
#define  USER_PROCESS 128 
 struct utmpx* FUNC1 (struct futx*) ; 
 scalar_t__ FUNC2 (struct futx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct utmpx *
FUNC4(const struct utmpx *id)
{
	struct futx fu;

	for (;;) {
		if (FUNC2(&fu) != 0)
			return (NULL);

		switch (fu.fu_type) {
		case USER_PROCESS:
		case INIT_PROCESS:
		case LOGIN_PROCESS:
		case DEAD_PROCESS:
			switch (id->ut_type) {
			case USER_PROCESS:
			case INIT_PROCESS:
			case LOGIN_PROCESS:
			case DEAD_PROCESS:
				if (FUNC3(fu.fu_id, id->ut_id,
				    FUNC0(sizeof(fu.fu_id), sizeof(id->ut_id))) ==
				    0)
					goto found;
			}
			break;
		default:
			if (fu.fu_type == id->ut_type)
				goto found;
			break;
		}
	}

found:
	return (FUNC1(&fu));
}