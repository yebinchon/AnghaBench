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
struct socket_info {int fd; } ;

/* Variables and functions */
 int FUNC0 (struct socket_info*,int) ; 
 struct socket_info* FUNC1 (int) ; 
 int FUNC2 (int) ; 

int FUNC3(int oldd)
{
	struct socket_info *si;
	int fd;

	si = FUNC1(oldd);
	if (si == NULL)
		return FUNC2(oldd);

	fd = FUNC2(si->fd);
	if (fd < 0)
		return fd;

	return FUNC0(si, fd);
}