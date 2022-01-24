#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
typedef  int dir_t ;
struct TYPE_5__ {int /*<<< orphan*/  m_stop; int /*<<< orphan*/  m_final; int /*<<< orphan*/  m_start; } ;
typedef  TYPE_1__ VICMD ;
typedef  int /*<<< orphan*/  SCR ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
#define  BACKWARD 130 
#define  FORWARD 129 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_ERR ; 
#define  NOTSET 128 
 int /*<<< orphan*/  SEARCH_EOL ; 
 int /*<<< orphan*/  SEARCH_MSG ; 
 int /*<<< orphan*/  SEARCH_WMSG ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(SCR *sp, VICMD *vp, CHAR_T *ptrn, size_t plen, u_int flags, dir_t dir)
{
	/* Display messages. */
	FUNC2(SEARCH_MSG);

	/* If it's a motion search, offset past end-of-line is okay. */
	if (FUNC0(vp))
		FUNC2(SEARCH_EOL);

	/*
	 * XXX
	 * Warn if the search wraps.  See the comment above, in v_exaddr().
	 */
	if (!FUNC1(sp))
		FUNC2(SEARCH_WMSG);
		
	switch (dir) {
	case BACKWARD:
		if (FUNC4(sp,
		    &vp->m_start, &vp->m_stop, ptrn, plen, NULL, flags))
			return (1);
		break;
	case FORWARD:
		if (FUNC5(sp,
		    &vp->m_start, &vp->m_stop, ptrn, plen, NULL, flags))
			return (1);
		break;
	case NOTSET:
		FUNC6(sp, M_ERR, "189|No previous search pattern");
		return (1);
	default:
		FUNC3();
	}

	/* Correct motion commands, otherwise, simply move to the location. */
	if (FUNC0(vp)) {
		if (FUNC7(sp, vp, 0))
			return(1);
	} else
		vp->m_final = vp->m_stop;
	return (0);
}