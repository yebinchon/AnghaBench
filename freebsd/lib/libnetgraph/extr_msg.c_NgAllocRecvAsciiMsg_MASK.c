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
struct ng_mesg {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  len ;

/* Variables and functions */
 int FUNC0 (int,struct ng_mesg*,int,char*) ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVBUF ; 
 int /*<<< orphan*/  FUNC1 (struct ng_mesg*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 struct ng_mesg* FUNC3 (int) ; 

int
FUNC4(int cs, struct ng_mesg **reply, char *path)
{
	int len;
	socklen_t optlen;

	optlen = sizeof(len);
	if (FUNC2(cs, SOL_SOCKET, SO_RCVBUF, &len, &optlen) == -1 ||
	    (*reply = FUNC3(len)) == NULL)
		return (-1);
	if ((len = FUNC0(cs, *reply, len, path)) < 0)
		FUNC1(*reply);
	return (len);
}