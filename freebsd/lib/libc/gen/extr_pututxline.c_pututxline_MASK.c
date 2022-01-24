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
struct utmpx {int dummy; } ;
struct futx {int fu_type; } ;

/* Variables and functions */
#define  BOOT_TIME 135 
#define  DEAD_PROCESS 134 
 int /*<<< orphan*/  EINVAL ; 
#define  INIT_PROCESS 133 
#define  LOGIN_PROCESS 132 
#define  NEW_TIME 131 
#define  OLD_TIME 130 
#define  SHUTDOWN_TIME 129 
#define  USER_PROCESS 128 
 int /*<<< orphan*/  errno ; 
 struct utmpx* FUNC0 (struct futx*) ; 
 int FUNC1 (struct futx*) ; 
 int /*<<< orphan*/  FUNC2 (struct futx*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct futx*) ; 
 int FUNC5 (struct futx*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (struct futx*) ; 
 int /*<<< orphan*/  FUNC8 (struct utmpx const*,struct futx*) ; 

struct utmpx *
FUNC9(const struct utmpx *utmpx)
{
	struct futx fu;
	int bad;

	bad = 0;

	FUNC8(utmpx, &fu);

	switch (fu.fu_type) {
	case BOOT_TIME:
		FUNC2(&fu);
		FUNC6();
		break;
	case SHUTDOWN_TIME:
		FUNC3();
		break;
	case OLD_TIME:
	case NEW_TIME:
		break;
	case USER_PROCESS:
		bad |= FUNC1(&fu);
		bad |= FUNC5(&fu);
		break;
#if 0 /* XXX: Are these records of any use to us? */
	case INIT_PROCESS:
	case LOGIN_PROCESS:
		bad |= utx_active_add(&fu);
		break;
#endif
	case DEAD_PROCESS:
		/*
		 * In case writing a logout entry fails, never attempt
		 * to write it to utx.log.  The logout entry's ut_id
		 * might be invalid.
		 */
		if (FUNC4(&fu) != 0)
			return (NULL);
		break;
	default:
		errno = EINVAL;
		return (NULL);
	}

	bad |= FUNC7(&fu);
	return (bad ? NULL : FUNC0(&fu));
}