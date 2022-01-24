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
struct TYPE_4__ {int /*<<< orphan*/  io_guid_tbl; int /*<<< orphan*/  cn_guid_tbl; int /*<<< orphan*/  sw_by_tuple_tbl; int /*<<< orphan*/  sw_tbl; int /*<<< orphan*/  hca_tbl; } ;
typedef  TYPE_1__ ftree_fabric_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ftree_fabric_t *FUNC3()
{
	ftree_fabric_t *p_ftree =
	    (ftree_fabric_t *) FUNC1(sizeof(ftree_fabric_t));
	if (p_ftree == NULL)
		return NULL;

	FUNC2(p_ftree, 0, sizeof(ftree_fabric_t));

	FUNC0(&p_ftree->hca_tbl);
	FUNC0(&p_ftree->sw_tbl);
	FUNC0(&p_ftree->sw_by_tuple_tbl);
	FUNC0(&p_ftree->cn_guid_tbl);
	FUNC0(&p_ftree->io_guid_tbl);

	return p_ftree;
}