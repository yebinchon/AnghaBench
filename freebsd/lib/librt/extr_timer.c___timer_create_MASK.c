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
typedef  struct __timer* timer_t ;
struct sigevent {scalar_t__ sigev_notify; } ;
struct sigev_node {int /*<<< orphan*/  sn_id; int /*<<< orphan*/  sn_dispatch; int /*<<< orphan*/  sn_flags; int /*<<< orphan*/  sn_gen; } ;
struct __timer {struct sigev_node* node; int /*<<< orphan*/  oshandle; } ;
typedef  int /*<<< orphan*/  clockid_t ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 scalar_t__ SIGEV_THREAD ; 
 int /*<<< orphan*/  SI_TIMER ; 
 int /*<<< orphan*/  SNF_SYNC ; 
 struct sigev_node* FUNC0 (int /*<<< orphan*/ ,struct sigevent*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct sigev_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct sigev_node*,struct sigevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct sigev_node*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct sigevent*,int /*<<< orphan*/ *) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC8 (struct __timer*) ; 
 struct __timer* FUNC9 (int) ; 
 int /*<<< orphan*/  timer_dispatch ; 

int
FUNC10(clockid_t clockid, struct sigevent *evp, timer_t *timerid)
{
	struct __timer *timer;
	struct sigevent ev;
	struct sigev_node *sn;
	int ret, err;

	timer = FUNC9(sizeof(struct __timer));
	if (timer == NULL)
		return (-1);

	if (evp == NULL || evp->sigev_notify != SIGEV_THREAD) {
		ret = FUNC7(clockid, evp, &timer->oshandle);
		if (ret == -1) {
			err = errno;
			FUNC8(timer);
			errno = err;
			return (ret);
		}
		timer->node = NULL;
		*timerid = timer;
		return (0);
	}

	if (FUNC1()) {
		FUNC8(timer);
		errno = EINVAL;
		return (-1);
	}

	sn = FUNC0(SI_TIMER, evp, NULL, 0);
	if (sn == NULL) {
		FUNC8(timer);
		errno = EAGAIN;
		return (-1);
	}

	FUNC3(sn, &ev, sn->sn_gen);
	ret = FUNC7(clockid, &ev, &timer->oshandle);
	if (ret != 0) {
		err = errno;
		FUNC2(sn);
		FUNC8(timer);
		errno = err;
		return (-1);
	}
	sn->sn_flags |= SNF_SYNC;
	sn->sn_dispatch = timer_dispatch;
	sn->sn_id = timer->oshandle;
	timer->node = sn;
	FUNC4();
	FUNC6(sn);
	FUNC5();
	*timerid = timer;
	return (0);
}