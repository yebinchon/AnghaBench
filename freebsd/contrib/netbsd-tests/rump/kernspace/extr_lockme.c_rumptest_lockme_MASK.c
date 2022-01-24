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
struct somemem {int /*<<< orphan*/  mutexetum; } ;
typedef  int /*<<< orphan*/  krwlock_t ;
typedef  int /*<<< orphan*/  kmutex_t ;
typedef  enum locktest { ____Placeholder_locktest } locktest ;

/* Variables and functions */
 int /*<<< orphan*/  IPL_NONE ; 
 int /*<<< orphan*/  KM_SLEEP ; 
#define  LOCKME_DESTROYHELD 135 
#define  LOCKME_DOUBLEFREE 134 
#define  LOCKME_DOUBLEINIT 133 
#define  LOCKME_MEMFREE 132 
#define  LOCKME_MTX 131 
#define  LOCKME_RWDOUBLEX 130 
#define  LOCKME_RWRX 129 
#define  LOCKME_RWXR 128 
 int /*<<< orphan*/  MUTEX_DEFAULT ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  RW_WRITER ; 
 struct somemem* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct somemem*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(enum locktest what)
{
	struct somemem *some;
	kmutex_t mtx;
	krwlock_t rw;

	FUNC6(&rw);
	FUNC4(&mtx, MUTEX_DEFAULT, IPL_NONE);

	switch (what) {
	case LOCKME_MTX:
		FUNC3(&mtx);
		FUNC3(&mtx);
		break;
	case LOCKME_RWDOUBLEX:
		FUNC5(&rw, RW_WRITER);
		FUNC5(&rw, RW_WRITER);
		break;
	case LOCKME_RWRX:
		FUNC5(&rw, RW_READER);
		FUNC5(&rw, RW_WRITER);
		break;
	case LOCKME_RWXR:
		FUNC5(&rw, RW_WRITER);
		FUNC5(&rw, RW_READER);
		break;
	case LOCKME_DOUBLEINIT:
		FUNC4(&mtx, MUTEX_DEFAULT, IPL_NONE);
		break;
	case LOCKME_DOUBLEFREE:
		FUNC2(&mtx);
		FUNC2(&mtx);
		break;
	case LOCKME_DESTROYHELD:
		FUNC3(&mtx);
		FUNC2(&mtx);
		break;
	case LOCKME_MEMFREE:
		some = FUNC0(sizeof(*some), KM_SLEEP);
		FUNC4(&some->mutexetum, MUTEX_DEFAULT, IPL_NONE);
		FUNC1(some, sizeof(*some));
		break;
	}
}