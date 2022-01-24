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
struct trail {scalar_t__ tr_magic; int tr_filefd; int /*<<< orphan*/  tr_dirfp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ TRAIL_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (struct trail*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct trail*) ; 
 int /*<<< orphan*/  FUNC4 (struct trail*) ; 

void
FUNC5(struct trail *trail)
{

	FUNC0(trail->tr_magic == TRAIL_MAGIC);

	if (trail->tr_filefd != -1)
		FUNC4(trail);
	FUNC2(trail->tr_dirfp);
	FUNC1(trail, sizeof(*trail));
	trail->tr_magic = 0;
	trail->tr_filefd = -1;
	FUNC3(trail);
}