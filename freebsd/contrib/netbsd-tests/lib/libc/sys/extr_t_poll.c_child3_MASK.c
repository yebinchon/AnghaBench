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
struct pollfd {int events; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  INFTIM ; 
 int POLLHUP ; 
 int POLLIN ; 
 int POLLOUT ; 
 int /*<<< orphan*/  desc ; 
 int /*<<< orphan*/  FUNC0 (struct pollfd*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(void)
{
	struct pollfd pfd;

	(void)FUNC2(5);

	pfd.fd = desc;
	pfd.events = POLLIN | POLLHUP | POLLOUT;

	(void)FUNC0(&pfd, 1, INFTIM);
	(void)FUNC1("child3 exit\n");
}