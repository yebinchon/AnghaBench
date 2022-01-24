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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {int /*<<< orphan*/  hash; struct ub_packed_rrset_key* key; } ;
struct TYPE_4__ {size_t dname_len; int /*<<< orphan*/  flags; void* type; void* rrset_class; int /*<<< orphan*/ * dname; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; TYPE_2__ rk; } ;
struct rrset_cache {int /*<<< orphan*/  table; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ub_packed_rrset_key*) ; 

void FUNC3(struct rrset_cache* r, uint8_t* nm, size_t nmlen,
	uint16_t type, uint16_t dclass, uint32_t flags)
{
	struct ub_packed_rrset_key key;
	key.entry.key = &key;
	key.rk.dname = nm;
	key.rk.dname_len = nmlen;
	key.rk.rrset_class = FUNC0(dclass);
	key.rk.type = FUNC0(type);
	key.rk.flags = flags;
	key.entry.hash = FUNC1(&key.rk);
	FUNC2(&r->table, key.entry.hash, &key);
}