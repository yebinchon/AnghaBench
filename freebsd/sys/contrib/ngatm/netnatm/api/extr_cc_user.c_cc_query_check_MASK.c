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
struct ccuser {int state; struct ccconn* accepted; int /*<<< orphan*/  connq; } ;
struct ccconn {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONN_IN_WAIT_ACCEPT_OK ; 
 struct ccconn* FUNC0 (int /*<<< orphan*/ *) ; 
#define  USER_ACTIVE 131 
#define  USER_IN_ARRIVED 130 
#define  USER_NULL 129 
#define  USER_OUT_PREPARING 128 

__attribute__((used)) static struct ccconn *
FUNC1(struct ccuser *user)
{

	switch (user->state) {

	  case USER_OUT_PREPARING:
	  case USER_IN_ARRIVED:
	  case USER_ACTIVE:
		return (FUNC0(&user->connq));

	  case USER_NULL:
		/* if we are waiting for the SETUP_confirm, we are in
		 * the NULL state still (we are the new endpoint), but
		 * have a connection in 'accepted' that is in the
		 * CONN_IN_WAIT_ACCEPT_OK state.
		 */
		if (user->accepted != NULL &&
		    user->accepted->state == CONN_IN_WAIT_ACCEPT_OK)
			return (user->accepted);
		/* FALLTHRU */

	  default:
		return (NULL);
	}
}