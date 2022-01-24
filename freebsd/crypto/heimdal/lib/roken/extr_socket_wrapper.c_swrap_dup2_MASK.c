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
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(int oldd, int newd)
{
	struct socket_info *si_newd, *si_oldd;
	int fd;

	if (newd == oldd)
	    return newd;

	si_oldd = FUNC1(oldd);
	si_newd = FUNC1(newd);

	if (si_oldd == NULL && si_newd == NULL)
		return FUNC2(oldd, newd);

	fd = FUNC2(si_oldd->fd, newd);
	if (fd < 0)
		return fd;

	/* close new socket first */
	if (si_newd)
	       	FUNC3(newd);

	return FUNC0(si_oldd, fd);
}