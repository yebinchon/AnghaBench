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
struct TYPE_3__ {char const* root; } ;
typedef  TYPE_1__ libbe_handle_t ;

/* Variables and functions */
 int BE_ERR_INVALIDNAME ; 
 int BE_ERR_PATHLEN ; 
 int BE_ERR_SUCCESS ; 
 scalar_t__ MAXNAMELEN ; 
 int /*<<< orphan*/  ZFS_TYPE_DATASET ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 

int
FUNC2(libbe_handle_t *lbh, const char *name)
{

	/*
	 * Impose the additional restriction that the entire dataset name must
	 * not exceed the maximum length of a dataset, i.e. MAXNAMELEN.
	 */
	if (FUNC0(lbh->root) + 1 + FUNC0(name) > MAXNAMELEN)
		return (BE_ERR_PATHLEN);

	if (!FUNC1(name, ZFS_TYPE_DATASET))
		return (BE_ERR_INVALIDNAME);

	return (BE_ERR_SUCCESS);
}