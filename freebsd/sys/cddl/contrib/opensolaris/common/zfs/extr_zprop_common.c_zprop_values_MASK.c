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
struct TYPE_3__ {char const* pd_values; } ;
typedef  TYPE_1__ zprop_desc_t ;
typedef  int /*<<< orphan*/  zfs_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ZPROP_CONT ; 
 int ZPROP_INVAL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 

const char *
FUNC3(int prop, zfs_type_t type)
{
	zprop_desc_t *prop_tbl;

	FUNC0(prop != ZPROP_INVAL && prop != ZPROP_CONT);
	FUNC0(prop < FUNC1(type));

	prop_tbl = FUNC2(type);

	return (prop_tbl[prop].pd_values);
}