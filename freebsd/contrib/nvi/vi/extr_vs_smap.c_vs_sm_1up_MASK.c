#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int rows; TYPE_1__* gp; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* scr_move ) (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  SMAP ;
typedef  TYPE_2__ SCR ;

/* Variables and functions */
 scalar_t__ HMAP ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ TMAP ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int) ; 
 int FUNC4 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_2__*,scalar_t__,scalar_t__) ; 

int
FUNC6(SCR *sp)
{
	/*
	 * Delete the top line of the screen.  Shift the screen map
	 * up and display a new line at the bottom of the screen.
	 */
	(void)sp->gp->scr_move(sp, 0, 0);
	if (FUNC3(sp, 1))
		return (1);

	/* One-line screens can fail. */
	if (FUNC0(sp)) {
		if (FUNC5(sp, TMAP, TMAP))
			return (1);
	} else {
		FUNC1(HMAP, HMAP + 1, (sp->rows - 1) * sizeof(SMAP));
		if (FUNC5(sp, TMAP - 1, TMAP))
			return (1);
	}
	/* vs_sm_next() flushed the cache. */
	return (FUNC4(sp, TMAP, NULL, NULL));
}