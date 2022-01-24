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
struct local_zones {int dummy; } ;
struct config_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct local_zones*) ; 
 int /*<<< orphan*/  FUNC1 (struct local_zones*,struct config_file*) ; 
 int /*<<< orphan*/  FUNC2 (struct local_zones*,struct config_file*) ; 
 int /*<<< orphan*/  FUNC3 (struct local_zones*,struct config_file*) ; 
 int /*<<< orphan*/  FUNC4 (struct local_zones*,struct config_file*) ; 
 int /*<<< orphan*/  FUNC5 (struct local_zones*,struct config_file*) ; 
 int /*<<< orphan*/  FUNC6 (struct config_file*) ; 
 int /*<<< orphan*/  FUNC7 (struct local_zones*,struct config_file*) ; 

int 
FUNC8(struct local_zones* zones, struct config_file* cfg)
{
	/* create zones from zone statements. */
	if(!FUNC5(zones, cfg)) {
		return 0;
	}
	/* apply default zones+content (unless disabled, or overridden) */
	if(!FUNC1(zones, cfg)) {
		return 0;
	}
	/* enter local zone overrides */
	if(!FUNC3(zones, cfg)) {
		return 0;
	}
	/* create implicit transparent zone from data. */
	if(!FUNC7(zones, cfg)) {
		return 0;
	}

	/* setup parent ptrs for lookup during data entry */
	FUNC0(zones);
	/* insert local zone tags */
	if(!FUNC4(zones, cfg)) {
		return 0;
	}
	/* insert local data */
	if(!FUNC2(zones, cfg)) {
		return 0;
	}
	/* freeup memory from cfg struct. */
	FUNC6(cfg);
	return 1;
}