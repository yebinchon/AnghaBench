#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ xe_dlhandle; } ;
typedef  TYPE_1__ xo_encoder_node_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  xe_link ; 
 int /*<<< orphan*/  xo_encoder_path ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  xo_encoders ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6 (void)
{
    xo_encoder_node_t *xep;

    FUNC3();

    for (;;) {
	xep = FUNC0(&xo_encoders);
        if (xep == NULL)
            break;

        FUNC1(&xo_encoders, xep, xe_link);

	if (xep->xe_dlhandle)
	    FUNC2(xep->xe_dlhandle);

	FUNC4(xep);
    }

    FUNC5(&xo_encoder_path);
}