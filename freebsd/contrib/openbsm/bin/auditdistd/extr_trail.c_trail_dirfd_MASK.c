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
struct trail {scalar_t__ tr_magic; int /*<<< orphan*/  tr_dirfp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ TRAIL_MAGIC ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(const struct trail *trail)
{

	FUNC0(trail->tr_magic == TRAIL_MAGIC);

	return (FUNC1(trail->tr_dirfp));
}