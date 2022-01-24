#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  we_cv; struct thread* we_td; } ;
typedef  TYPE_1__ wb_ext ;
struct TYPE_7__ {int /*<<< orphan*/  wb_waitlist; int /*<<< orphan*/  wb_oldpri; int /*<<< orphan*/  wb_awakened; scalar_t__ wb_waitkey; struct TYPE_7__* wb_next; int /*<<< orphan*/  wb_waittype; TYPE_1__* wb_ext; TYPE_3__* wb_object; } ;
typedef  TYPE_2__ wait_block ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct thread {int /*<<< orphan*/  td_priority; } ;
struct TYPE_8__ {scalar_t__ dh_sigstate; scalar_t__ dh_type; int /*<<< orphan*/  dh_waitlisthead; } ;
typedef  TYPE_3__ nt_dispatch_header ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ DISP_TYPE_MUTANT ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ INT32_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  STATUS_TIMEOUT ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  WAITTYPE_ANY ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ntoskrnl_dispatchlock ; 
 scalar_t__ FUNC9 (TYPE_3__*,struct thread*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,struct thread*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (struct timeval*) ; 

uint32_t
FUNC14(void *arg, uint32_t reason, uint32_t mode,
    uint8_t alertable, int64_t *duetime)
{
	wait_block		w;
	struct thread		*td = curthread;
	struct timeval		tv;
	int			error = 0;
	uint64_t		curtime;
	wb_ext			we;
	nt_dispatch_header	*obj;

	obj = arg;

	if (obj == NULL)
		return (STATUS_INVALID_PARAMETER);

	FUNC7(&ntoskrnl_dispatchlock);

	FUNC4(&we.we_cv, "KeWFS");
	we.we_td = td;

	/*
	 * Check to see if this object is already signalled,
	 * and just return without waiting if it is.
	 */
	if (FUNC9(obj, td) == TRUE) {
		/* Sanity check the signal state value. */
		if (obj->dh_sigstate != INT32_MIN) {
			FUNC10(obj, curthread);
			FUNC8(&ntoskrnl_dispatchlock);
			return (STATUS_SUCCESS);
		} else {
			/*
			 * There's a limit to how many times we can
			 * recursively acquire a mutant. If we hit
			 * the limit, something is very wrong.
			 */
			if (obj->dh_type == DISP_TYPE_MUTANT) {
				FUNC8(&ntoskrnl_dispatchlock);
				FUNC12("mutant limit exceeded");
			}
		}
	}

	FUNC2((char *)&w, sizeof(wait_block));
	w.wb_object = obj;
	w.wb_ext = &we;
	w.wb_waittype = WAITTYPE_ANY;
	w.wb_next = &w;
	w.wb_waitkey = 0;
	w.wb_awakened = FALSE;
	w.wb_oldpri = td->td_priority;

	FUNC0((&obj->dh_waitlisthead), (&w.wb_waitlist));

	/*
	 * The timeout value is specified in 100 nanosecond units
	 * and can be a positive or negative number. If it's positive,
	 * then the duetime is absolute, and we need to convert it
	 * to an absolute offset relative to now in order to use it.
	 * If it's negative, then the duetime is relative and we
	 * just have to convert the units.
	 */

	if (duetime != NULL) {
		if (*duetime < 0) {
			tv.tv_sec = - (*duetime) / 10000000;
			tv.tv_usec = (- (*duetime) / 10) -
			    (tv.tv_sec * 1000000);
		} else {
			FUNC11(&curtime);
			if (*duetime < curtime)
				tv.tv_sec = tv.tv_usec = 0;
			else {
				tv.tv_sec = ((*duetime) - curtime) / 10000000;
				tv.tv_usec = ((*duetime) - curtime) / 10 -
				    (tv.tv_sec * 1000000);
			}
		}
	}

	if (duetime == NULL)
		FUNC6(&we.we_cv, &ntoskrnl_dispatchlock);
	else
		error = FUNC5(&we.we_cv,
		    &ntoskrnl_dispatchlock, FUNC13(&tv));

	FUNC1(&w.wb_waitlist);

	FUNC3(&we.we_cv);

	/* We timed out. Leave the object alone and return status. */

	if (error == EWOULDBLOCK) {
		FUNC8(&ntoskrnl_dispatchlock);
		return (STATUS_TIMEOUT);
	}

	FUNC8(&ntoskrnl_dispatchlock);

	return (STATUS_SUCCESS);
/*
	return (KeWaitForMultipleObjects(1, &obj, WAITTYPE_ALL, reason,
	    mode, alertable, duetime, &w));
*/
}