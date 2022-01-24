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
struct sigevent {scalar_t__ sigev_notify; } ;
struct sigev_node {int dummy; } ;
struct aiocb {int dummy; } ;
typedef  int /*<<< orphan*/  sigev_id_t ;

/* Variables and functions */
 scalar_t__ SIGEV_THREAD ; 
 int /*<<< orphan*/  FUNC0 (struct sigev_node*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int,struct aiocb* const*,int,struct sigevent*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct sigevent*,struct sigev_node**,struct sigevent*) ; 
 int errno ; 

int
FUNC5(int mode, struct aiocb * const list[], int nent,
    struct sigevent *sig)
{
	struct sigev_node *sn;
	struct sigevent saved_ev;
	int ret, err;

	if (sig == NULL || sig->sigev_notify != SIGEV_THREAD)
		return (FUNC3(mode, list, nent, sig));

	ret = FUNC4((sigev_id_t)list, sig, &sn, &saved_ev);
	if (ret)
		return (ret);
	ret = FUNC3(mode, list, nent, sig);
	*sig = saved_ev;
	if (ret != 0) {
		err = errno;
		FUNC1();
		FUNC0(sn);
		FUNC2();
		errno = err;
	}
	return (ret);
}