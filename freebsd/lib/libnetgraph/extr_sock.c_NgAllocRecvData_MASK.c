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
typedef  int /*<<< orphan*/  u_char ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  len ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVBUF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 

int
FUNC4(int ds, u_char **buf, char *hook)
{
	int len;
	socklen_t optlen;

	optlen = sizeof(len);
	if (FUNC2(ds, SOL_SOCKET, SO_RCVBUF, &len, &optlen) == -1 ||
	    (*buf = FUNC3(len)) == NULL)
		return (-1);
	if ((len = FUNC0(ds, *buf, len, hook)) < 0)
		FUNC1(*buf);
	return (len);
}