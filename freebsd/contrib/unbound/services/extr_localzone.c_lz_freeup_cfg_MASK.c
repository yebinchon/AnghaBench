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
struct config_file {int /*<<< orphan*/ * local_data; int /*<<< orphan*/ * local_zones_nodefault; int /*<<< orphan*/ * local_zones; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct config_file* cfg)
{
	FUNC0(cfg->local_zones);
	cfg->local_zones = NULL;
	FUNC1(cfg->local_zones_nodefault);
	cfg->local_zones_nodefault = NULL;
	FUNC1(cfg->local_data);
	cfg->local_data = NULL;
}