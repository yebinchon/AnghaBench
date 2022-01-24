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
typedef  int /*<<< orphan*/  val ;
struct proto_conn {int dummy; } ;
struct hast_resource {scalar_t__ hr_role; char* hr_sourceaddr; int /*<<< orphan*/  hr_conn; int /*<<< orphan*/  hr_remoteaddr; int /*<<< orphan*/  hr_name; } ;
typedef  scalar_t__ int16_t ;

/* Variables and functions */
 scalar_t__ HAST_ROLE_PRIMARY ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,struct proto_conn**) ; 
 int /*<<< orphan*/  FUNC4 (struct proto_conn*) ; 
 int FUNC5 (struct proto_conn*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct proto_conn*) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static void
FUNC10(struct hast_resource *res)
{
	struct proto_conn *conn;
	int16_t val = 0;

	FUNC2("[%s] (%s) ", res->hr_name, FUNC9(res->hr_role));

	FUNC0(res->hr_role == HAST_ROLE_PRIMARY);

	if (FUNC7(res->hr_conn, &val, sizeof(val)) == -1) {
		FUNC1(LOG_WARNING,
		    "Unable to receive connection command");
		return;
	}
	if (FUNC3(res->hr_sourceaddr[0] != '\0' ? res->hr_sourceaddr : NULL,
	    res->hr_remoteaddr, &conn) == -1) {
		val = errno;
		FUNC1(LOG_WARNING,
		    "Unable to create outgoing connection to %s",
		    res->hr_remoteaddr);
		goto out;
	}
	if (FUNC5(conn, -1) == -1) {
		val = errno;
		FUNC1(LOG_WARNING, "Unable to connect to %s",
		    res->hr_remoteaddr);
		FUNC4(conn);
		goto out;
	}
	val = 0;
out:
	if (FUNC8(res->hr_conn, &val, sizeof(val)) == -1) {
		FUNC1(LOG_WARNING,
		    "Unable to send reply to connection request");
	}
	if (val == 0 && FUNC6(res->hr_conn, conn) == -1)
		FUNC1(LOG_WARNING, "Unable to send connection");

	FUNC2("%s", "");
}