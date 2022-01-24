#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct TYPE_3__ {TYPE_2__ w_end; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCSH_I_SEEK ; 
 int /*<<< orphan*/  TC_BREAK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ setintr ; 
 TYPE_1__* whyles ; 

__attribute__((used)) static void
FUNC4(void)
{
    int old_pintr_disabled;

    whyles->w_end.type = TCSH_I_SEEK;
    if (setintr)
	FUNC2(&old_pintr_disabled);
    FUNC3(TC_BREAK, 0, NULL);		/* read the expression in */
    if (setintr)
	FUNC1(&old_pintr_disabled);
    FUNC0(&whyles->w_end);
}