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
struct TYPE_4__ {scalar_t__ out_port; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ osm_log_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (TYPE_1__*) ; 
 scalar_t__ stderr ; 
 scalar_t__ stdout ; 

int FUNC4(osm_log_t * p_log)
{
	int ret;

	if (p_log->out_port == stdout || p_log->out_port == stderr)
		return 0;
	FUNC0(&p_log->lock);
	FUNC2(p_log->out_port);
	ret = FUNC3(p_log);
	FUNC1(&p_log->lock);
	return ret;
}