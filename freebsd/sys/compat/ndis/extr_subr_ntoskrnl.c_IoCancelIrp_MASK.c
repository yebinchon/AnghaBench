#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_8__ {int /*<<< orphan*/  irp_cancelirql; int /*<<< orphan*/  irp_cancel; } ;
typedef  TYPE_1__ irp ;
typedef  int /*<<< orphan*/ * cancel_func ;
struct TYPE_9__ {int /*<<< orphan*/  isl_devobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 

uint8_t
FUNC6(irp *ip)
{
	cancel_func		cfunc;
	uint8_t			cancelirql;

	FUNC0(&cancelirql);
	cfunc = FUNC3(ip, NULL);
	ip->irp_cancel = TRUE;
	if (cfunc == NULL) {
		FUNC2(cancelirql);
		return (FALSE);
	}
	ip->irp_cancelirql = cancelirql;
	FUNC5(cfunc, FUNC1(ip)->isl_devobj, ip);
	return (uint8_t)FUNC4(ip, TRUE);
}