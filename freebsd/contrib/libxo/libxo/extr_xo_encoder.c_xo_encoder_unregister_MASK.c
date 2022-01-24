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
typedef  int /*<<< orphan*/  xo_encoder_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xe_link ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  xo_encoders ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4 (const char *name)
{
    FUNC2();

    xo_encoder_node_t *xep = FUNC1(name);
    if (xep) {
	FUNC0(&xo_encoders, xep, xe_link);
	FUNC3(xep);
    }
}