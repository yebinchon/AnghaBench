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
typedef  enum ddt_type { ____Placeholder_ddt_type } ddt_type ;
typedef  enum ddt_class { ____Placeholder_ddt_class } ddt_class ;
typedef  int /*<<< orphan*/  dmu_object_info_t ;
struct TYPE_4__ {int /*<<< orphan*/ ** ddt_object; int /*<<< orphan*/  ddt_os; } ;
typedef  TYPE_1__ ddt_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC3(ddt_t *ddt, enum ddt_type type, enum ddt_class class,
    dmu_object_info_t *doi)
{
	if (!FUNC1(ddt, type, class))
		return (FUNC0(ENOENT));

	return (FUNC2(ddt->ddt_os, ddt->ddt_object[type][class],
	    doi));
}