#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int num; int str; } ;
typedef  TYPE_1__ HistEvent ;

/* Variables and functions */
 int /*<<< orphan*/  H_CURR ; 
 int /*<<< orphan*/  H_NEXT ; 
 int /*<<< orphan*/  H_PREV ; 
 int /*<<< orphan*/  H_SET ; 
 int /*<<< orphan*/  h ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,...) ; 
 char* FUNC1 (int,char const*) ; 

int
FUNC2(const char *str, int direction)
{
	HistEvent ev;
	const char *strp;
	int curr_num;

	if (FUNC0(h, &ev, H_CURR) != 0)
		return -1;
	curr_num = ev.num;

	for (;;) {
		if ((strp = FUNC1(ev.str, str)) != NULL)
			return (int)(strp - ev.str);
		if (FUNC0(h, &ev, direction < 0 ? H_NEXT:H_PREV) != 0)
			break;
	}
	(void)FUNC0(h, &ev, H_SET, curr_num);
	return -1;
}