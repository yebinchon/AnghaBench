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
struct thread {int dummy; } ;
struct sigevent {int dummy; } ;
struct linux_timer_create_args {int /*<<< orphan*/  timerid; int /*<<< orphan*/  clock_id; int /*<<< orphan*/ * evp; } ;
struct l_sigevent {int dummy; } ;
typedef  int /*<<< orphan*/  l_ev ;
typedef  int /*<<< orphan*/  clockid_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct l_sigevent*,int) ; 
 int FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,struct sigevent*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*,int) ; 
 int FUNC4 (struct l_sigevent*,struct sigevent*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC6(struct thread *td, struct linux_timer_create_args *uap)
{
	struct l_sigevent l_ev;
	struct sigevent ev, *evp;
	clockid_t nwhich;
	int error, id;

	if (uap->evp == NULL) {
		evp = NULL;
	} else {
		error = FUNC0(uap->evp, &l_ev, sizeof(l_ev));
		if (error != 0)
			return (error);
		error = FUNC4(&l_ev, &ev);
		if (error != 0)
			return (error);
		evp = &ev;
	}
	error = FUNC5(&nwhich, uap->clock_id);
	if (error != 0)
		return (error);
	error = FUNC2(td, nwhich, evp, &id, -1);
	if (error == 0) {
		error = FUNC1(&id, uap->timerid, sizeof(int));
		if (error != 0)
			FUNC3(td, id);
	}
	return (error);
}