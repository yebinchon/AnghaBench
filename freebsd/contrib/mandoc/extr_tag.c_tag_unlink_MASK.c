#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ pid_t ;
struct TYPE_2__ {int tcpgid; scalar_t__ pager_pid; char* ofn; char* tfn; int /*<<< orphan*/  ofd; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 TYPE_1__ tag_files ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(void)
{
	pid_t	 tc_pgid;

	if (tag_files.tcpgid != -1) {
		tc_pgid = FUNC1(tag_files.ofd);
		if (tc_pgid == tag_files.pager_pid ||
		    tc_pgid == FUNC0(0) ||
		    FUNC0(tc_pgid) == -1)
			(void)FUNC2(tag_files.ofd, tag_files.tcpgid);
	}
	if (*tag_files.ofn != '\0')
		FUNC3(tag_files.ofn);
	if (*tag_files.tfn != '\0')
		FUNC3(tag_files.tfn);
}