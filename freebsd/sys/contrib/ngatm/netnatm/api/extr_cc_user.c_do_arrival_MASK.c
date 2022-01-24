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
struct ccuser {int /*<<< orphan*/  connq; scalar_t__ aborted; } ;
struct ccconn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMOP_ARRIVAL_OF_INCOMING_CALL ; 
 int /*<<< orphan*/  CONN_SIG_ARRIVAL ; 
 struct ccconn* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  USER_IN_ARRIVED ; 
 int /*<<< orphan*/  FUNC1 (struct ccconn*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ccuser*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ccuser*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct ccuser *user)
{
	struct ccconn *conn;

	user->aborted = 0;
	if ((conn = FUNC0(&user->connq)) != NULL) {
		FUNC3(user, USER_IN_ARRIVED);
		FUNC2(user, ATMOP_ARRIVAL_OF_INCOMING_CALL, NULL, 0);
		FUNC1(conn, CONN_SIG_ARRIVAL, NULL);
	}
}