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
typedef  scalar_t__ uint32_t ;
struct _region {int dummy; } ;
struct _memstream {int dummy; } ;
struct _citrus_db_header_x {int /*<<< orphan*/  dex_data_size; int /*<<< orphan*/  dex_data_offset; int /*<<< orphan*/  dex_key_size; int /*<<< orphan*/  dex_key_offset; int /*<<< orphan*/  dhx_entry_offset; int /*<<< orphan*/  dhx_num_entries; } ;
struct _citrus_db_entry_x {int /*<<< orphan*/  dex_data_size; int /*<<< orphan*/  dex_data_offset; int /*<<< orphan*/  dex_key_size; int /*<<< orphan*/  dex_key_offset; int /*<<< orphan*/  dhx_entry_offset; int /*<<< orphan*/  dhx_num_entries; } ;
struct _citrus_db {int /*<<< orphan*/  db_region; } ;

/* Variables and functions */
 int EFTYPE ; 
 int EINVAL ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int _CITRUS_DB_ENTRY_SIZE ; 
 scalar_t__ FUNC0 (struct _memstream*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct _memstream*,int /*<<< orphan*/ *) ; 
 struct _citrus_db_header_x* FUNC2 (struct _memstream*,struct _region*,int) ; 
 scalar_t__ FUNC3 (struct _memstream*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(struct _citrus_db *db, int idx, struct _region *key,
    struct _region *data)
{
	struct _citrus_db_entry_x *dex;
	struct _citrus_db_header_x *dhx;
	struct _memstream ms;
	uint32_t num_entries;
	size_t offset;

	FUNC1(&ms, &db->db_region);

	dhx = FUNC2(&ms, NULL, sizeof(*dhx));
	num_entries = FUNC4(dhx->dhx_num_entries);
	if (idx < 0 || (uint32_t)idx >= num_entries)
		return (EINVAL);

	/* seek to the next entry */
	offset = FUNC4(dhx->dhx_entry_offset) + idx * _CITRUS_DB_ENTRY_SIZE;
	if (FUNC0(&ms, offset, SEEK_SET))
		return (EFTYPE);
	/* get the entry record */
	dex = FUNC2(&ms, NULL, _CITRUS_DB_ENTRY_SIZE);
	if (dex == NULL)
		return (EFTYPE);
	/* seek to the head of the key. */
	if (FUNC3(&ms, FUNC4(dex->dex_key_offset), SEEK_SET))
		return (EFTYPE);
	/* get the region of the key. */
	if (FUNC2(&ms, key, FUNC4(dex->dex_key_size))==NULL)
		return (EFTYPE);
	/* seek to the head of the data. */
	if (FUNC3(&ms, FUNC4(dex->dex_data_offset), SEEK_SET))
		return (EFTYPE);
	/* get the region of the data. */
	if (FUNC2(&ms, data, FUNC4(dex->dex_data_size))==NULL)
		return (EFTYPE);

	return (0);
}