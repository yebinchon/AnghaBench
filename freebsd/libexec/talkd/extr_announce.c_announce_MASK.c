#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stat {int st_mode; } ;
typedef  int /*<<< orphan*/  full_tty ;
struct TYPE_4__ {int /*<<< orphan*/  r_tty; } ;
typedef  TYPE_1__ CTL_MSG ;

/* Variables and functions */
 int PERMISSION_DENIED ; 
 char* _PATH_DEV ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,struct stat*) ; 

int
FUNC3(CTL_MSG *request, const char *remote_machine)
{
	char full_tty[32];
	struct stat stbuf;

	(void)FUNC1(full_tty, sizeof(full_tty),
	    "%s%s", _PATH_DEV, request->r_tty);
	if (FUNC2(full_tty, &stbuf) < 0 || (stbuf.st_mode&020) == 0)
		return (PERMISSION_DENIED);
	return (FUNC0(request->r_tty, request, remote_machine));
}