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
struct msg_fds {int /*<<< orphan*/ * pfd; int /*<<< orphan*/ * cfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct msg_fds *fds)
{
	if (FUNC1(fds->pfd) == -1)
		return -1;
	if (FUNC1(fds->cfd) == -1) {
		FUNC0(fds->pfd[0]);
		FUNC0(fds->pfd[1]);
		return -1;
	}
	return 0;
}