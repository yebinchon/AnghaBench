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
typedef  union ccb {int dummy; } ccb ;
struct ccb_hdr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tqe; } ;

/* Variables and functions */
 struct ccb_hdr* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ccb_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TARGIOCDEBUG ; 
 int /*<<< orphan*/  TARGIOCDISABLE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC3 (union ccb*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,scalar_t__*) ; 
 int kq_fd ; 
 int /*<<< orphan*/  pending_queue ; 
 TYPE_1__ periph_links ; 
 int targ_fd ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  work_queue ; 

__attribute__((used)) static void
FUNC6()
{
	struct ccb_hdr *ccb_h;

	if (debug) {
		FUNC5("cleanup called");
		debug = 0;
		FUNC4(targ_fd, TARGIOCDEBUG, &debug);
	}
	FUNC4(targ_fd, TARGIOCDISABLE, NULL);
	FUNC2(targ_fd);

	while ((ccb_h = FUNC0(&pending_queue)) != NULL) {
		FUNC1(&pending_queue, ccb_h, periph_links.tqe);
		FUNC3((union ccb *)ccb_h);
	}
	while ((ccb_h = FUNC0(&work_queue)) != NULL) {
		FUNC1(&work_queue, ccb_h, periph_links.tqe);
		FUNC3((union ccb *)ccb_h);
	}

	if (kq_fd != -1)
		FUNC2(kq_fd);
}