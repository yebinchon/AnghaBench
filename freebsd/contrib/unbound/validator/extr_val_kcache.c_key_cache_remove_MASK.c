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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {int /*<<< orphan*/  hash; struct key_entry_key* key; } ;
struct key_entry_key {size_t namelen; TYPE_1__ entry; int /*<<< orphan*/  key_class; int /*<<< orphan*/ * name; } ;
struct key_cache {int /*<<< orphan*/  slab; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct key_entry_key*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct key_entry_key*) ; 

void FUNC2(struct key_cache* kcache,
	uint8_t* name, size_t namelen, uint16_t key_class)
{
	struct key_entry_key lookfor;
	lookfor.entry.key = &lookfor;
	lookfor.name = name;
	lookfor.namelen = namelen;
	lookfor.key_class = key_class;
	FUNC0(&lookfor);
	FUNC1(kcache->slab, lookfor.entry.hash, &lookfor);
}