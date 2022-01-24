#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ypxfrstat ;
typedef  scalar_t__ yppush_status ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* close ) (TYPE_3__*) ;} ;
struct TYPE_5__ {scalar_t__ status; } ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int RPC_ANYSOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,scalar_t__,int,struct timeval,int*) ; 
 TYPE_3__* dbp ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ypxfr_callback_addr ; 
 scalar_t__ ypxfr_prognum ; 
 TYPE_1__ ypxfr_resp ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

__attribute__((used)) static void
FUNC11(ypxfrstat retval, char *temp)
{
	CLIENT *clnt;
	int sock = RPC_ANYSOCK;
	struct timeval timeout;

	/* Clean up no matter what happened previously. */
	if (temp != NULL) {
		if (dbp != NULL)
			(void)(dbp->close)(dbp);
		if (FUNC7(temp) == -1) {
			FUNC8("failed to unlink %s",FUNC5(errno));
		}
	}

	if (ypxfr_prognum) {
		timeout.tv_sec = 20;
		timeout.tv_usec = 0;

		if ((clnt = FUNC3(&ypxfr_callback_addr, ypxfr_prognum,
					1, timeout, &sock)) == NULL) {
			FUNC8("%s", FUNC1("failed to "
			    "establish callback handle"));
			FUNC4(1);
		}

		ypxfr_resp.status = (yppush_status)retval;

		if (FUNC9(&ypxfr_resp, clnt) == NULL) {
			FUNC8("%s", FUNC2(clnt, "callback failed"));
			FUNC0(clnt);
			FUNC4(1);
		}
		FUNC0(clnt);
	} else {
		FUNC8("Exiting: %s", FUNC10(retval));
	}

	FUNC4(0);
}