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

/* Variables and functions */
 scalar_t__ PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*,size_t) ; 
 char* FUNC1 (size_t,int) ; 

const char
*FUNC2(const char *name)
{
	char *buf;

	if ((buf = FUNC1((size_t)PATH_MAX, sizeof(*buf))) == NULL)
		return (NULL);
	FUNC0(name, buf, (size_t)PATH_MAX);
	return (buf);
}