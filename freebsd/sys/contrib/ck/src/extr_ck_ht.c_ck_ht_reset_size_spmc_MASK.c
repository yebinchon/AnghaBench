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
struct ck_ht_map {int dummy; } ;
struct ck_ht {int /*<<< orphan*/  m; struct ck_ht_map* map; } ;
typedef  int /*<<< orphan*/  CK_HT_TYPE ;

/* Variables and functions */
 struct ck_ht_map* FUNC0 (struct ck_ht*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ck_ht_map*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ck_ht_map**,struct ck_ht_map*) ; 

bool
FUNC3(struct ck_ht *table, CK_HT_TYPE size)
{
	struct ck_ht_map *map, *update;

	map = table->map;
	update = FUNC0(table, size);
	if (update == NULL)
		return false;

	FUNC2(&table->map, update);
	FUNC1(table->m, map, true);
	return true;
}