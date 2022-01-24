#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_9__ {size_t db_object; } ;
struct TYPE_10__ {int db_level; size_t db_blkid; scalar_t__ db_state; struct TYPE_10__* db_hash_next; int /*<<< orphan*/  db_mtx; TYPE_1__ db; int /*<<< orphan*/ * db_objset; } ;
typedef  TYPE_2__ dmu_buf_impl_t ;
struct TYPE_11__ {size_t hash_table_mask; TYPE_2__** hash_table; } ;
typedef  TYPE_3__ dbuf_hash_table_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,size_t,int,size_t) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ DB_EVICTING ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,size_t,int,size_t) ; 
 int dbuf_hash_count ; 
 TYPE_3__ dbuf_hash_table ; 
 int /*<<< orphan*/  hash_chain_max ; 
 int /*<<< orphan*/  hash_chains ; 
 int /*<<< orphan*/  hash_collisions ; 
 int /*<<< orphan*/  hash_elements_max ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static dmu_buf_impl_t *
FUNC8(dmu_buf_impl_t *db)
{
	dbuf_hash_table_t *h = &dbuf_hash_table;
	objset_t *os = db->db_objset;
	uint64_t obj = db->db.db_object;
	int level = db->db_level;
	uint64_t blkid, hv, idx;
	dmu_buf_impl_t *dbf;
	uint32_t i;

	blkid = db->db_blkid;
	hv = FUNC5(os, obj, level, blkid);
	idx = hv & h->hash_table_mask;

	FUNC6(FUNC1(h, idx));
	for (dbf = h->hash_table[idx], i = 0; dbf != NULL;
	    dbf = dbf->db_hash_next, i++) {
		if (FUNC0(dbf, os, obj, level, blkid)) {
			FUNC6(&dbf->db_mtx);
			if (dbf->db_state != DB_EVICTING) {
				FUNC7(FUNC1(h, idx));
				return (dbf);
			}
			FUNC7(&dbf->db_mtx);
		}
	}

	if (i > 0) {
		FUNC2(hash_collisions);
		if (i == 1)
			FUNC2(hash_chains);

		FUNC3(hash_chain_max, i);
	}

	FUNC6(&db->db_mtx);
	db->db_hash_next = h->hash_table[idx];
	h->hash_table[idx] = db;
	FUNC7(FUNC1(h, idx));
	FUNC4(&dbuf_hash_count);
	FUNC3(hash_elements_max, dbuf_hash_count);

	return (NULL);
}