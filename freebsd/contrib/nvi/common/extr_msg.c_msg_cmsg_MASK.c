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
typedef  int cmsg_t ;
typedef  int /*<<< orphan*/  SCR ;

/* Variables and functions */
#define  CMSG_CONF 133 
#define  CMSG_CONT 132 
#define  CMSG_CONT_EX 131 
#define  CMSG_CONT_Q 130 
#define  CMSG_CONT_R 129 
#define  CMSG_CONT_S 128 
 int /*<<< orphan*/  FUNC0 () ; 
 char const* FUNC1 (int /*<<< orphan*/ *,char*,size_t*) ; 

const char *
FUNC2(
	SCR *sp,
	cmsg_t which,
	size_t *lenp)
{
	switch (which) {
	case CMSG_CONF:
		return (FUNC1(sp, "268|confirm? [ynq]", lenp));
	case CMSG_CONT:
		return (FUNC1(sp, "269|Press any key to continue: ", lenp));
	case CMSG_CONT_EX:
		return (FUNC1(sp,
	    "270|Press any key to continue [: to enter more ex commands]: ",
		    lenp));
	case CMSG_CONT_R:
		return (FUNC1(sp, "161|Press Enter to continue: ", lenp));
	case CMSG_CONT_S:
		return (FUNC1(sp, "275| cont?", lenp));
	case CMSG_CONT_Q:
		return (FUNC1(sp,
		    "271|Press any key to continue [q to quit]: ", lenp));
	default:
		FUNC0();
	}
	/* NOTREACHED */
}