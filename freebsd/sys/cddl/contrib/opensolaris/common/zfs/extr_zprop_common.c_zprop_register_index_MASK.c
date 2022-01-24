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
typedef  int /*<<< orphan*/  zprop_index_t ;
typedef  int /*<<< orphan*/  zprop_attr_t ;
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  PROP_TYPE_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

void
FUNC1(int prop, const char *name, uint64_t def,
    zprop_attr_t attr, int objset_types, const char *values,
    const char *colname, const zprop_index_t *idx_tbl)
{
	FUNC0(prop, name, PROP_TYPE_INDEX, def, NULL, attr,
	    objset_types, values, colname, B_TRUE, B_TRUE, idx_tbl);
}