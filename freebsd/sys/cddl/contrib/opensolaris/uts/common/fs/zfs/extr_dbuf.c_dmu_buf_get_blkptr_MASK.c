#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dmu_buf_t ;
struct TYPE_2__ {int /*<<< orphan*/ * db_blkptr; } ;
typedef  TYPE_1__ dmu_buf_impl_t ;
typedef  int /*<<< orphan*/  blkptr_t ;

/* Variables and functions */

blkptr_t *
FUNC0(dmu_buf_t *db)
{
	dmu_buf_impl_t *dbi = (dmu_buf_impl_t *)db;
	return (dbi->db_blkptr);
}