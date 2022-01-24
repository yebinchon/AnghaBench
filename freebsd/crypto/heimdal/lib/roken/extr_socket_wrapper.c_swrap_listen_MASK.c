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
 struct socket_info* FUNC0 (int) ; 
 int FUNC1 (int,int) ; 

int FUNC2(int s, int backlog)
{
	int ret;
	struct socket_info *si = FUNC0(s);

	if (!si) {
		return FUNC1(s, backlog);
	}

	ret = FUNC1(s, backlog);

	return ret;
}