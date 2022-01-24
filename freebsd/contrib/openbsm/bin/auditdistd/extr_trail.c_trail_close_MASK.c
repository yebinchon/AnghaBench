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
struct trail {scalar_t__ tr_magic; int tr_filefd; char* tr_filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ TRAIL_MAGIC ; 
 scalar_t__ FUNC2 (int) ; 

void
FUNC3(struct trail *trail)
{

	FUNC0(trail->tr_magic == TRAIL_MAGIC);
	FUNC0(trail->tr_filefd >= 0);
	FUNC0(trail->tr_filename[0] != '\0');

	FUNC1(FUNC2(trail->tr_filefd) == 0);
	trail->tr_filefd = -1;
}