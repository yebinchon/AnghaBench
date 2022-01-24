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
struct socket_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ENOBUFS ; 
#define  FIONREAD 128 
 int /*<<< orphan*/  SWRAP_PENDING_RST ; 
 int /*<<< orphan*/  errno ; 
 struct socket_info* FUNC0 (int) ; 
 int FUNC1 (int,int,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct socket_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC3(int s, int r, void *p)
{
	int ret;
	struct socket_info *si = FUNC0(s);
	int value;

	if (!si) {
		return FUNC1(s, r, p);
	}

	ret = FUNC1(s, r, p);

	switch (r) {
	case FIONREAD:
		value = *((int *)p);
		if (ret == -1 && errno != EAGAIN && errno != ENOBUFS) {
			FUNC2(si, NULL, SWRAP_PENDING_RST, NULL, 0);
		} else if (value == 0) { /* END OF FILE */
			FUNC2(si, NULL, SWRAP_PENDING_RST, NULL, 0);
		}
		break;
	}

	return ret;
}