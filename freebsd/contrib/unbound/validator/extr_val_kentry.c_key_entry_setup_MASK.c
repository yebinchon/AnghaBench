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
struct regional {int dummy; } ;
struct TYPE_2__ {struct key_entry_data* data; struct key_entry_key* key; } ;
struct key_entry_key {size_t namelen; TYPE_1__ entry; int /*<<< orphan*/  key_class; int /*<<< orphan*/  name; } ;
struct key_entry_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct key_entry_key*,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (struct regional*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct regional*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int
FUNC3(struct regional* region,
	uint8_t* name, size_t namelen, uint16_t dclass, 
	struct key_entry_key** k, struct key_entry_data** d)
{
	*k = FUNC1(region, sizeof(**k));
	if(!*k)
		return 0;
	FUNC0(*k, 0, sizeof(**k));
	(*k)->entry.key = *k;
	(*k)->name = FUNC2(region, name, namelen);
	if(!(*k)->name)
		return 0;
	(*k)->namelen = namelen;
	(*k)->key_class = dclass;
	*d = FUNC1(region, sizeof(**d));
	if(!*d)
		return 0;
	(*k)->entry.data = *d;
	return 1;
}