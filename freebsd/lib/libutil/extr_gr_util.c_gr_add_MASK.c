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
struct group {int dummy; } ;

/* Variables and functions */
 struct group* FUNC0 (struct group const*,char*,char const*,int) ; 
 size_t FUNC1 (struct group const*,char const*,int*) ; 
 char* FUNC2 (size_t) ; 

struct group *
FUNC3(const struct group *gr, const char *newmember)
{
	char *mem;
	size_t len;
	int num_mem;

	num_mem = 0;
	len = FUNC1(gr, newmember, &num_mem);
	/* Create new group and copy old group into it. */
	if ((mem = FUNC2(len)) == NULL)
		return (NULL);
	return (FUNC0(gr, mem, newmember, num_mem));
}