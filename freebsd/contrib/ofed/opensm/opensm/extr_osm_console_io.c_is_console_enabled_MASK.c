#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  console; } ;
typedef  TYPE_1__ osm_subn_opt_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(osm_subn_opt_t * p_opt)
{
	/* checks for a variety of types of consoles - default is off or 0 */
	if (p_opt)
		return FUNC0(p_opt->console) || FUNC1(p_opt->console)
			|| FUNC2(p_opt->console);
	return 0;
}