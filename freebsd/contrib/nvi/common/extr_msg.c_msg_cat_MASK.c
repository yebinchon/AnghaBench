#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ nl_catd ;
struct TYPE_5__ {scalar_t__ catd; } ;
struct TYPE_4__ {TYPE_2__* gp; } ;
typedef  TYPE_1__ SCR ;
typedef  TYPE_2__ GS ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 char* FUNC1 (scalar_t__,int,int,char const*) ; 
 scalar_t__ FUNC2 (char const) ; 
 size_t FUNC3 (char const*) ; 

const char *
FUNC4(
	SCR *sp,
	const char *str,
	size_t *lenp)
{
	GS *gp;
	char *p;
	int msgno;

	/*
	 * If it's not a catalog message, i.e. has doesn't have a leading
	 * number and '|' symbol, we're done.
	 */
	if (FUNC2(str[0]) &&
	    FUNC2(str[1]) && FUNC2(str[2]) && str[3] == '|') {
		msgno = FUNC0(str);
		str = &str[4];

		gp = sp == NULL ? NULL : sp->gp;
		if (gp != NULL && gp->catd != (nl_catd)-1 &&
		    (p = FUNC1(gp->catd, 1, msgno, str)) != NULL) {
			if (lenp != NULL)
				*lenp = FUNC3(p);
			return (p);
		}
	}
	if (lenp != NULL)
		*lenp = FUNC3(str);
	return (str);
}