#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_long ;
struct TYPE_6__ {int l_ui; } ;
typedef  TYPE_1__ l_fp ;
struct TYPE_7__ {int /*<<< orphan*/ * fp; } ;

/* Variables and functions */
 scalar_t__ MJD_1900 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_3__ protostats ; 
 int /*<<< orphan*/  stats_control ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

void
FUNC5(
	char	*str		/* text string */
	)
{
	l_fp	now;
	u_long	day;

	if (!stats_control)
		return;

	FUNC3(&now);
	FUNC1(&protostats, now.l_ui);
	day = now.l_ui / 86400 + MJD_1900;
	now.l_ui %= 86400;
	if (protostats.fp != NULL) {
		FUNC2(protostats.fp, "%lu %d %s\n", day,
		    FUNC4(&now, 3), str);
		FUNC0(protostats.fp);
	}
}