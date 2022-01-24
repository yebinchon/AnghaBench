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
struct sigevent32 {int dummy; } ;
struct sigevent {int dummy; } ;
struct freebsd32_ktimer_create_args {int /*<<< orphan*/  timerid; int /*<<< orphan*/  clock_id; int /*<<< orphan*/ * evp; } ;
typedef  int /*<<< orphan*/  ev32 ;

/* Variables and functions */
 int FUNC0 (struct sigevent32*,struct sigevent*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct sigevent32*,int) ; 
 int FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct thread*,int /*<<< orphan*/ ,struct sigevent*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*,int) ; 

int FUNC5(struct thread *td,
    struct freebsd32_ktimer_create_args *uap)
{
	struct sigevent32 ev32;
	struct sigevent ev, *evp;
	int error, id;

	if (uap->evp == NULL) {
		evp = NULL;
	} else {
		evp = &ev;
		error = FUNC1(uap->evp, &ev32, sizeof(ev32));
		if (error != 0)
			return (error);
		error = FUNC0(&ev32, &ev);
		if (error != 0)
			return (error);
	}
	error = FUNC3(td, uap->clock_id, evp, &id, -1);
	if (error == 0) {
		error = FUNC2(&id, uap->timerid, sizeof(int));
		if (error != 0)
			FUNC4(td, id);
	}
	return (error);
}