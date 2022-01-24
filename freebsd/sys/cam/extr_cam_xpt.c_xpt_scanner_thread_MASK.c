#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  path; } ;
union ccb {TYPE_3__ ccb_h; } ;
struct cam_path {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  tqe; } ;
struct TYPE_4__ {int /*<<< orphan*/  ccb_scanq; int /*<<< orphan*/  xpt_topo_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRIBIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__ sim_links ; 
 int /*<<< orphan*/  FUNC4 (union ccb*) ; 
 int /*<<< orphan*/  FUNC5 (struct cam_path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct cam_path*) ; 
 int /*<<< orphan*/  FUNC8 (struct cam_path*) ; 
 int /*<<< orphan*/  FUNC9 (struct cam_path*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 TYPE_1__ xsoftc ; 

__attribute__((used)) static void
FUNC11(void *dummy)
{
	union ccb	*ccb;
	struct cam_path	 path;

	FUNC6();
	for (;;) {
		if (FUNC0(&xsoftc.ccb_scanq))
			FUNC3(&xsoftc.ccb_scanq, &xsoftc.xpt_topo_lock, PRIBIO,
			       "-", 0);
		if ((ccb = (union ccb *)FUNC1(&xsoftc.ccb_scanq)) != NULL) {
			FUNC2(&xsoftc.ccb_scanq, &ccb->ccb_h, sim_links.tqe);
			FUNC10();

			/*
			 * Since lock can be dropped inside and path freed
			 * by completion callback even before return here,
			 * take our own path copy for reference.
			 */
			FUNC5(&path, ccb->ccb_h.path);
			FUNC7(&path);
			FUNC4(ccb);
			FUNC8(&path);
			FUNC9(&path);

			FUNC6();
		}
	}
}