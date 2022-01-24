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
struct TYPE_4__ {struct g_provider* zv_provider; } ;
typedef  TYPE_1__ zvol_state_t ;
struct g_provider {scalar_t__ name; } ;
typedef  int /*<<< orphan*/  ZVOL_DRIVER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct g_provider*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  system_proc ; 
 int /*<<< orphan*/  zvol_geom_worker ; 

__attribute__((used)) static void
FUNC2(zvol_state_t *zv)
{
	struct g_provider *pp;

	pp = zv->zv_provider;
	FUNC0(pp, 0);

	FUNC1(zvol_geom_worker, zv, &system_proc, NULL, 0, 0,
	    "zfskern", "zvol %s", pp->name + sizeof(ZVOL_DRIVER));
}