#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  struct sigevent {scalar_t__ sigev_notify; } const sigevent ;
struct sigev_node {int /*<<< orphan*/  sn_gen; int /*<<< orphan*/  sn_dispatch; int /*<<< orphan*/  sn_id; } ;
typedef  TYPE_1__* mqd_t ;
struct TYPE_3__ {int /*<<< orphan*/  oshandle; struct sigev_node* node; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ SIGEV_THREAD ; 
 int /*<<< orphan*/  SI_MESGQ ; 
 struct sigev_node* FUNC0 (int /*<<< orphan*/ ,struct sigevent const*,struct sigev_node*,int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct sigev_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct sigev_node*,struct sigevent const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct sigev_node*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct sigevent const*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  mq_dispatch ; 

int
FUNC8(mqd_t mqd, const struct sigevent *evp)
{
	struct sigevent ev;
	struct sigev_node *sn;
	int ret;

	if (evp == NULL || evp->sigev_notify != SIGEV_THREAD) {
		if (mqd->node != NULL) {
			FUNC4();
			FUNC2(mqd->node);
			mqd->node = NULL;
			FUNC5();
		}
		return FUNC7(mqd->oshandle, evp);
	}

	if (FUNC1()) {
		/*
		 * Thread library is not enabled.
		 */
		errno = EINVAL;
		return (-1);
	}

	sn = FUNC0(SI_MESGQ, evp, mqd->node, 1);
	if (sn == NULL) {
		errno = EAGAIN;
		return (-1);
	}

	sn->sn_id = mqd->oshandle;
	sn->sn_dispatch = mq_dispatch;
	FUNC3(sn, &ev, sn->sn_gen);
	FUNC4();
	if (mqd->node != NULL)
		FUNC2(mqd->node);
	mqd->node = sn;
	FUNC6(sn);
	ret = FUNC7(mqd->oshandle, &ev);
	FUNC5();
	return (ret);
}