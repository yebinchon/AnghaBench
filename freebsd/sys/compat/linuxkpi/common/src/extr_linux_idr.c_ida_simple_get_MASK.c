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
struct ida {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct ida*,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct ida*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ida*,int) ; 

int
FUNC5(struct ida *ida, unsigned int start, unsigned int end,
    gfp_t flags)
{
	int ret, id;
	unsigned int max;

	FUNC0((int)start >= 0);
	FUNC0((int)end >= 0);

	if (end == 0)
		max = 0x80000000;
	else {
		FUNC0(end > start);
		max = end - 1;
	}
again:
	if (!FUNC3(ida, flags))
		return (-ENOMEM);

	if ((ret = FUNC2(ida, start, &id)) == 0) {
		if (id > max) {
			FUNC4(ida, id);
			ret = -ENOSPC;
		} else {
			ret = id;
		}
	}
	if (FUNC1(ret == -EAGAIN))
		goto again;

	return (ret);
}