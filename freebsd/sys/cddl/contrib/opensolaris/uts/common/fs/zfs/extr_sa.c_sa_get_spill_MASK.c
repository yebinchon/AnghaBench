#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * sa_spill; int /*<<< orphan*/  sa_bonus; } ;
typedef  TYPE_1__ sa_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  SA_SPILL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(sa_handle_t *hdl)
{
	int rc;
	if (hdl->sa_spill == NULL) {
		if ((rc = FUNC1(hdl->sa_bonus, NULL,
		    &hdl->sa_spill)) == 0)
			FUNC0(0 == FUNC2(hdl, SA_SPILL));
	} else {
		rc = 0;
	}

	return (rc);
}