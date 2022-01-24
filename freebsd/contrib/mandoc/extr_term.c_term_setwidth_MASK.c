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
struct termp {int /*<<< orphan*/  (* setwidth ) (struct termp*,int,int) ;} ;
struct roffsu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCALE_MAX ; 
 int /*<<< orphan*/ * FUNC0 (char const*,struct roffsu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct termp*,int,int) ; 
 int FUNC2 (struct termp*,struct roffsu*) ; 

void
FUNC3(struct termp *p, const char *wstr)
{
	struct roffsu	 su;
	int		 iop, width;

	iop = 0;
	width = 0;
	if (NULL != wstr) {
		switch (*wstr) {
		case '+':
			iop = 1;
			wstr++;
			break;
		case '-':
			iop = -1;
			wstr++;
			break;
		default:
			break;
		}
		if (FUNC0(wstr, &su, SCALE_MAX) != NULL)
			width = FUNC2(p, &su);
		else
			iop = 0;
	}
	(*p->setwidth)(p, iop, width);
}