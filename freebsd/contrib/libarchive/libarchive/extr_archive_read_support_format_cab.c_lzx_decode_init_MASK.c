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
struct lzx_stream {struct lzx_dec* ds; } ;
struct TYPE_3__ {scalar_t__ cache_avail; scalar_t__ cache_buffer; } ;
struct lzx_dec {int error; int w_size; int w_mask; int r0; int r1; int r2; int /*<<< orphan*/  lt; int /*<<< orphan*/  mt; int /*<<< orphan*/  pt; int /*<<< orphan*/  at; TYPE_1__ br; scalar_t__ state; scalar_t__ w_pos; TYPE_2__* pos_tbl; TYPE_2__* w_buff; } ;
struct TYPE_4__ {int base; int footer_bits; } ;

/* Variables and functions */
 int ARCHIVE_FAILED ; 
 int ARCHIVE_FATAL ; 
 scalar_t__ ARCHIVE_OK ; 
 int SLOT_BASE ; 
 int SLOT_MAX ; 
 struct lzx_dec* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 void* FUNC4 (int) ; 
 int* slots ; 

__attribute__((used)) static int
FUNC5(struct lzx_stream *strm, int w_bits)
{
	struct lzx_dec *ds;
	int slot, w_size, w_slot;
	int base, footer;
	int base_inc[18];

	if (strm->ds == NULL) {
		strm->ds = FUNC0(1, sizeof(*strm->ds));
		if (strm->ds == NULL)
			return (ARCHIVE_FATAL);
	}
	ds = strm->ds;
	ds->error = ARCHIVE_FAILED;

	/* Allow bits from 15(32KBi) up to 21(2MBi) */
	if (w_bits < SLOT_BASE || w_bits > SLOT_MAX)
		return (ARCHIVE_FAILED);

	ds->error = ARCHIVE_FATAL;

	/*
	 * Alloc window
	 */
	w_size = ds->w_size;
	w_slot = slots[w_bits - SLOT_BASE];
	ds->w_size = 1U << w_bits;
	ds->w_mask = ds->w_size -1;
	if (ds->w_buff == NULL || w_size != ds->w_size) {
		FUNC1(ds->w_buff);
		ds->w_buff = FUNC4(ds->w_size);
		if (ds->w_buff == NULL)
			return (ARCHIVE_FATAL);
		FUNC1(ds->pos_tbl);
		ds->pos_tbl = FUNC4(sizeof(ds->pos_tbl[0]) * w_slot);
		if (ds->pos_tbl == NULL)
			return (ARCHIVE_FATAL);
		FUNC2(&(ds->mt));
	}

	for (footer = 0; footer < 18; footer++)
		base_inc[footer] = 1 << footer;
	base = footer = 0;
	for (slot = 0; slot < w_slot; slot++) {
		int n;
		if (footer == 0)
			base = slot;
		else
			base += base_inc[footer];
		if (footer < 17) {
			footer = -2;
			for (n = base; n; n >>= 1)
				footer++;
			if (footer <= 0)
				footer = 0;
		}
		ds->pos_tbl[slot].base = base;
		ds->pos_tbl[slot].footer_bits = footer;
	}

	ds->w_pos = 0;
	ds->state = 0;
	ds->br.cache_buffer = 0;
	ds->br.cache_avail = 0;
	ds->r0 = ds->r1 = ds->r2 = 1;

	/* Initialize aligned offset tree. */
	if (FUNC3(&(ds->at), 8, 8) != ARCHIVE_OK)
		return (ARCHIVE_FATAL);

	/* Initialize pre-tree. */
	if (FUNC3(&(ds->pt), 20, 10) != ARCHIVE_OK)
		return (ARCHIVE_FATAL);

	/* Initialize Main tree. */
	if (FUNC3(&(ds->mt), 256+(w_slot<<3), 16)
	    != ARCHIVE_OK)
		return (ARCHIVE_FATAL);

	/* Initialize Length tree. */
	if (FUNC3(&(ds->lt), 249, 16) != ARCHIVE_OK)
		return (ARCHIVE_FATAL);

	ds->error = 0;

	return (ARCHIVE_OK);
}