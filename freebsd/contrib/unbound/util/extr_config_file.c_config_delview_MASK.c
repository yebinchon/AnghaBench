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
struct config_view {int /*<<< orphan*/  local_data; int /*<<< orphan*/  local_zones_nodefault; int /*<<< orphan*/  local_zones; struct config_view* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct config_view*) ; 

void
FUNC3(struct config_view* p)
{
	if(!p) return;
	FUNC2(p->name);
	FUNC0(p->local_zones);
	FUNC1(p->local_zones_nodefault);
	FUNC1(p->local_data);
	FUNC2(p);
}