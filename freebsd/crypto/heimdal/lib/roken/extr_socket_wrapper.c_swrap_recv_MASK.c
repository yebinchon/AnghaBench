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
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ ENOBUFS ; 
 int /*<<< orphan*/  SWRAP_RECV ; 
 int /*<<< orphan*/  SWRAP_RECV_RST ; 
 scalar_t__ errno ; 
 struct socket_info* FUNC0 (int) ; 
 int FUNC1 (int,void*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (struct socket_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int) ; 

ssize_t FUNC3(int s, void *buf, size_t len, int flags)
{
	int ret;
	struct socket_info *si = FUNC0(s);

	if (!si) {
		return FUNC1(s, buf, len, flags);
	}

	ret = FUNC1(s, buf, len, flags);
	if (ret == -1 && errno != EAGAIN && errno != ENOBUFS) {
		FUNC2(si, NULL, SWRAP_RECV_RST, NULL, 0);
	} else if (ret == 0) { /* END OF FILE */
		FUNC2(si, NULL, SWRAP_RECV_RST, NULL, 0);
	} else {
		FUNC2(si, NULL, SWRAP_RECV, buf, ret);
	}

	return ret;
}