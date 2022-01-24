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
typedef  size_t uint32_t ;
struct _memstream {int dummy; } ;
struct _citrus_region {int dummy; } ;
struct _citrus_db_locator {size_t dl_offset; size_t dl_hashval; } ;
struct _citrus_db_header_x {int /*<<< orphan*/  dex_data_size; int /*<<< orphan*/  dex_data_offset; int /*<<< orphan*/  dex_key_offset; int /*<<< orphan*/  dex_key_size; int /*<<< orphan*/  dex_hash_value; int /*<<< orphan*/  dex_next_offset; int /*<<< orphan*/  dhx_entry_offset; int /*<<< orphan*/  dhx_num_entries; } ;
struct _citrus_db_entry_x {int /*<<< orphan*/  dex_data_size; int /*<<< orphan*/  dex_data_offset; int /*<<< orphan*/  dex_key_offset; int /*<<< orphan*/  dex_key_size; int /*<<< orphan*/  dex_hash_value; int /*<<< orphan*/  dex_next_offset; int /*<<< orphan*/  dhx_entry_offset; int /*<<< orphan*/  dhx_num_entries; } ;
struct _citrus_db {size_t (* db_hashfunc ) (struct _citrus_region*) ;struct _citrus_region db_region; } ;

/* Variables and functions */
 int EFTYPE ; 
 int ENOENT ; 
 int /*<<< orphan*/  SEEK_SET ; 
 size_t _CITRUS_DB_ENTRY_SIZE ; 
 scalar_t__ FUNC0 (struct _memstream*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct _memstream*,struct _citrus_region*) ; 
 struct _citrus_db_header_x* FUNC2 (struct _memstream*,struct _citrus_region*,size_t) ; 
 scalar_t__ FUNC3 (struct _memstream*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct _citrus_region*) ; 
 size_t FUNC5 (struct _citrus_region*) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC8 (struct _citrus_region*) ; 

int
FUNC9(struct _citrus_db *db, struct _citrus_region *key,
    struct _citrus_region *data, struct _citrus_db_locator *dl)
{
	struct _citrus_db_entry_x *dex;
	struct _citrus_db_header_x *dhx;
	struct _citrus_region r;
	struct _memstream ms;
	uint32_t hashval, num_entries;
	size_t offset;

	FUNC1(&ms, &db->db_region);

	dhx = FUNC2(&ms, NULL, sizeof(*dhx));
	num_entries = FUNC6(dhx->dhx_num_entries);
	if (num_entries == 0)
		return (ENOENT);

	if (dl != NULL && dl->dl_offset>0) {
		hashval = dl->dl_hashval;
		offset = dl->dl_offset;
		if (offset >= FUNC5(&db->db_region))
			return (ENOENT);
	} else {
		hashval = db->db_hashfunc(key)%num_entries;
		offset = FUNC6(dhx->dhx_entry_offset) +
		    hashval * _CITRUS_DB_ENTRY_SIZE;
		if (dl)
			dl->dl_hashval = hashval;
	}
	do {
		/* seek to the next entry */
		if (FUNC0(&ms, offset, SEEK_SET))
			return (EFTYPE);
		/* get the entry record */
		dex = FUNC2(&ms, NULL, _CITRUS_DB_ENTRY_SIZE);
		if (dex == NULL)
			return (EFTYPE);

		/* jump to next entry having the same hash value. */
		offset = FUNC6(dex->dex_next_offset);

		/* save the current position */
		if (dl) {
			dl->dl_offset = offset;
			if (offset == 0)
				dl->dl_offset = FUNC5(&db->db_region);
		}

		/* compare hash value. */
		if (FUNC6(dex->dex_hash_value) != hashval)
			/* not found */
			break;
		/* compare key length */
		if (FUNC6(dex->dex_key_size) == FUNC5(key)) {
			/* seek to the head of the key. */
			if (FUNC3(&ms, FUNC6(dex->dex_key_offset),
			    SEEK_SET))
				return (EFTYPE);
			/* get the region of the key */
			if (FUNC2(&ms, &r,
			    FUNC5(key)) == NULL)
				return (EFTYPE);
			/* compare key byte stream */
			if (FUNC7(FUNC4(&r), FUNC4(key),
			    FUNC5(key)) == 0) {
				/* match */
				if (FUNC3(
				    &ms, FUNC6(dex->dex_data_offset),
				    SEEK_SET))
					return (EFTYPE);
				if (FUNC2(
				    &ms, data,
				    FUNC6(dex->dex_data_size)) == NULL)
					return (EFTYPE);
				return (0);
			}
		}
	} while (offset != 0);

	return (ENOENT);
}