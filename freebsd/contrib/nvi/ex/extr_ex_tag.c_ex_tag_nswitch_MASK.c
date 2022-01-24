#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * frp; } ;
struct TYPE_10__ {int /*<<< orphan*/ * frp; int /*<<< orphan*/  fname; } ;
typedef  TYPE_1__ TAG ;
typedef  TYPE_2__ SCR ;

/* Variables and functions */
 int FS_ALL ; 
 int FS_POSSIBLE ; 
 int /*<<< orphan*/  FS_SETALT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_FSWITCH ; 
 int /*<<< orphan*/  SC_SCR_CENTER ; 
 int /*<<< orphan*/  SC_SCR_TOP ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int,int) ; 

int
FUNC5(SCR *sp, TAG *tp, int force)
{
	/* Get a file structure. */
	if (tp->frp == NULL && (tp->frp = FUNC2(sp, tp->fname)) == NULL)
		return (1);

	/* If not changing files, return, we're done. */
	if (tp->frp == sp->frp)
		return (0);

	/* Check for permission to leave. */
	if (FUNC4(sp, force, FS_ALL | FS_POSSIBLE))
		return (1);

	/* Initialize the new file. */
	if (FUNC3(sp, tp->frp, NULL, FS_SETALT))
		return (1);

	/* Display tags in the center of the screen. */
	FUNC0(sp, SC_SCR_TOP);
	FUNC1(sp, SC_SCR_CENTER);

	/* Switch. */
	FUNC1(sp, SC_FSWITCH);
	return (0);
}