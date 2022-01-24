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
struct state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  gmt ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct state* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct state* const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct state *const sp)
{
	if (FUNC0(gmt, sp, TRUE) != 0)
		(void) FUNC1(gmt, sp, TRUE);
}