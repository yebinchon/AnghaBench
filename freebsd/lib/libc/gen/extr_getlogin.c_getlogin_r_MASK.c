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
typedef  int /*<<< orphan*/  tmpname ;

/* Variables and functions */
 int ERANGE ; 
 int MAXLOGNAME ; 
 scalar_t__ FUNC0 (char*,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (char*) ; 

int
FUNC3(char *logname, int namelen)
{
	char tmpname[MAXLOGNAME];
	int	len;

	if (namelen < 1)
		return (ERANGE);
	logname[0] = '\0';

	if (FUNC0(tmpname, sizeof(tmpname)) < 0)
		return (errno);
	len = FUNC2(tmpname) + 1;
	if (len > namelen)
		return (ERANGE);
	FUNC1(logname, tmpname, len);
	return (0);
}