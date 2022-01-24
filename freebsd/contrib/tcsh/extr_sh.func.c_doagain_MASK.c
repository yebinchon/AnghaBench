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
struct TYPE_2__ {scalar_t__ w_fename; int /*<<< orphan*/  w_start; int /*<<< orphan*/ * w_fe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VAR_READWRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* whyles ; 

__attribute__((used)) static void
FUNC5(void)
{
    /* Repeating a while is simple */
    if (whyles->w_fename == 0) {
	FUNC1(&whyles->w_start);
	return;
    }
    /*
     * The foreach variable list actually has a spurious word ")" at the end of
     * the w_fe list.  Thus we are at the of the list if one word beyond this
     * is 0.
     */
    if (!whyles->w_fe[1]) {
	FUNC2(NULL, NULL);
	return;
    }
    FUNC4(whyles->w_fename, FUNC3(FUNC0(*whyles->w_fe++)), VAR_READWRITE);
    FUNC1(&whyles->w_start);
}