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
struct TYPE_2__ {int /*<<< orphan*/ * dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; scalar_t__ id; } ;
struct alloc_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct alloc_cache*,struct ub_packed_rrset_key*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void 
FUNC2(void* key, void* userdata)
{
	struct ub_packed_rrset_key* k = (struct ub_packed_rrset_key*)key;
	struct alloc_cache* a = (struct alloc_cache*)userdata;
	k->id = 0;
	FUNC1(k->rk.dname);
	k->rk.dname = NULL;
	FUNC0(a, k);
}