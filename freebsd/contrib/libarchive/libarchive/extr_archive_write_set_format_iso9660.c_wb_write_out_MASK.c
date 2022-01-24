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
struct iso9660 {int wbuff_remaining; scalar_t__ wbuff_type; scalar_t__ wbuff_offset; scalar_t__ wbuff_written; scalar_t__ wbuff; } ;
struct archive_write {scalar_t__ format_data; } ;

/* Variables and functions */
 size_t LOGICAL_BLOCK_SIZE ; 
 scalar_t__ WB_TO_STREAM ; 
 int FUNC0 (struct archive_write*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,size_t) ; 
 int FUNC2 (struct archive_write*,scalar_t__,size_t) ; 

__attribute__((used)) static int
FUNC3(struct archive_write *a)
{
	struct iso9660 *iso9660 = (struct iso9660 *)a->format_data;
	size_t wsize, nw;
	int r;

	wsize = sizeof(iso9660->wbuff) - iso9660->wbuff_remaining;
	nw = wsize % LOGICAL_BLOCK_SIZE;
	if (iso9660->wbuff_type == WB_TO_STREAM)
		r = FUNC0(a, iso9660->wbuff, wsize - nw);
	else
		r = FUNC2(a, iso9660->wbuff, wsize - nw);
	/* Increase the offset. */
	iso9660->wbuff_offset += wsize - nw;
	if (iso9660->wbuff_offset > iso9660->wbuff_written)
		iso9660->wbuff_written = iso9660->wbuff_offset;
	iso9660->wbuff_remaining = sizeof(iso9660->wbuff);
	if (nw) {
		iso9660->wbuff_remaining -= nw;
		FUNC1(iso9660->wbuff, iso9660->wbuff + wsize - nw, nw);
	}
	return (r);
}