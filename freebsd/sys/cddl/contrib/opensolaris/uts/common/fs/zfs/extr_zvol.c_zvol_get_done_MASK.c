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
struct TYPE_5__ {int /*<<< orphan*/  zgd_lr; scalar_t__ zgd_db; } ;
typedef  TYPE_1__ zgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(zgd_t *zgd, int error)
{
	if (zgd->zgd_db)
		FUNC0(zgd->zgd_db, zgd);

	FUNC2(zgd->zgd_lr);

	FUNC1(zgd, sizeof (zgd_t));
}