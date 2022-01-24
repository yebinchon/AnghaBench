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
struct utmpx {int ut_type; } ;
struct futx {int /*<<< orphan*/  fu_type; } ;

/* Variables and functions */
#define  BOOT_TIME 135 
#define  DEAD_PROCESS 134 
 int /*<<< orphan*/  EMPTY ; 
#define  INIT_PROCESS 133 
#define  LOGIN_PROCESS 132 
#define  NEW_TIME 131 
#define  OLD_TIME 130 
#define  SHUTDOWN_TIME 129 
#define  USER_PROCESS 128 
 int /*<<< orphan*/  FUNC0 (struct utmpx const*,struct futx*) ; 
 int /*<<< orphan*/  FUNC1 (struct utmpx const*,struct futx*) ; 
 int /*<<< orphan*/  FUNC2 (struct utmpx const*,struct futx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct futx*) ; 
 int /*<<< orphan*/  FUNC4 (struct utmpx const*,struct futx*) ; 
 int /*<<< orphan*/  host ; 
 int /*<<< orphan*/  line ; 
 int /*<<< orphan*/  FUNC5 (struct futx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  user ; 

void
FUNC6(const struct utmpx *ut, struct futx *fu)
{

	FUNC5(fu, 0, sizeof *fu);

	switch (ut->ut_type) {
	case BOOT_TIME:
	case OLD_TIME:
	case NEW_TIME:
	/* Extension: shutdown time. */
	case SHUTDOWN_TIME:
		break;
	case USER_PROCESS:
		FUNC0(ut, fu);
		FUNC2(ut, fu, user);
		FUNC2(ut, fu, line);
		/* Extension: host name. */
		FUNC2(ut, fu, host);
		FUNC1(ut, fu);
		break;
	case INIT_PROCESS:
		FUNC0(ut, fu);
		FUNC1(ut, fu);
		break;
	case LOGIN_PROCESS:
		FUNC0(ut, fu);
		FUNC2(ut, fu, user);
		FUNC2(ut, fu, line);
		FUNC1(ut, fu);
		break;
	case DEAD_PROCESS:
		FUNC0(ut, fu);
		FUNC1(ut, fu);
		break;
	default:
		fu->fu_type = EMPTY;
		return;
	}

	FUNC4(ut, fu);
	FUNC3(fu);
}