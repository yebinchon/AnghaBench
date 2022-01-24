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
struct sockaddr_un {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(int fd)
{
	struct sockaddr_un addr;
	socklen_t len = (socklen_t)sizeof(addr);
	FUNC0(FUNC1(fd, (struct sockaddr*)(void *)&addr,
	    &len) == 0);
}