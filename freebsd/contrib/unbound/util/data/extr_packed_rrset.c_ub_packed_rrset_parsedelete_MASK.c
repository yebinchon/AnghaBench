#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * dname; } ;
struct TYPE_3__ {int /*<<< orphan*/ * data; } ;
struct ub_packed_rrset_key {scalar_t__ id; TYPE_2__ rk; TYPE_1__ entry; } ;
struct alloc_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct alloc_cache*,struct ub_packed_rrset_key*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct ub_packed_rrset_key* pkey,
        struct alloc_cache* alloc)
{
	if(!pkey)
		return;
	FUNC1(pkey->entry.data);
	pkey->entry.data = NULL;
	FUNC1(pkey->rk.dname);
	pkey->rk.dname = NULL;
	pkey->id = 0;
	FUNC0(alloc, pkey);
}