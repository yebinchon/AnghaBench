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
struct uni_ie_cause {int dummy; } ;
struct ccuser {int /*<<< orphan*/  connq; int /*<<< orphan*/  aborted; } ;
struct ccconn {struct uni_ie_cause* cause; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONN_SIG_USER_ABORT ; 
 struct ccconn* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  USER_NULL ; 
 int /*<<< orphan*/  FUNC1 (struct ccconn*) ; 
 int /*<<< orphan*/  FUNC2 (struct ccconn*) ; 
 int /*<<< orphan*/  FUNC3 (struct ccconn*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ccconn*) ; 
 int /*<<< orphan*/  FUNC5 (struct ccuser*) ; 
 int /*<<< orphan*/  FUNC6 (struct uni_ie_cause*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ccuser*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct ccuser *user, const struct uni_ie_cause *cause)
{
	struct ccconn *conn;

	/*
	 * Although the standard state that 'all connections
	 * associated with this endpoint are aborted' we only
	 * have to abort the head one, because in state A6
	 * (call present) the endpoint is only associated to the
	 * head connection - the others are 'somewhere else' and
	 * need to be redispatched.
	 *
	 * First bring user into a state that the connections
	 * are not dispatched back to it.
	 */
	FUNC7(user, USER_NULL);
	if (!user->aborted) {
		if ((conn = FUNC0(&user->connq)) != NULL) {
			FUNC6(conn->cause, 0, sizeof(conn->cause));
			if (cause != NULL)
				conn->cause[0] = *cause;
			FUNC2(conn);
			FUNC4(conn);
			FUNC3(conn, CONN_SIG_USER_ABORT, NULL);
		}
	}

	while ((conn = FUNC0(&user->connq)) != NULL) {
		/* these should be in C21 */
		FUNC4(conn);
		FUNC1(conn);
	}

	FUNC5(user);
}