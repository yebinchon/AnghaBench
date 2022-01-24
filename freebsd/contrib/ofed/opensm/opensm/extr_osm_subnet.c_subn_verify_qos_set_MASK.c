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
struct TYPE_3__ {int /*<<< orphan*/  sl2vl; int /*<<< orphan*/  vlarb_high; int /*<<< orphan*/  vlarb_low; int /*<<< orphan*/  high_limit; int /*<<< orphan*/  max_vls; } ;
typedef  TYPE_1__ osm_qos_options_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,char*) ; 

__attribute__((used)) static void FUNC4(osm_qos_options_t *set, const char *prefix)
{
	FUNC1(&set->max_vls, prefix);
	FUNC0(&set->high_limit, prefix);
	FUNC3(&set->vlarb_low, prefix, "low");
	FUNC3(&set->vlarb_high, prefix, "high");
	FUNC2(&set->sl2vl, prefix);
}