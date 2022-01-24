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
struct iso9660 {size_t wbuff_offset; } ;
struct archive_write {scalar_t__ format_data; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 scalar_t__ ARCHIVE_OK ; 
 size_t LOGICAL_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,size_t) ; 
 size_t FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct archive_write*) ; 
 scalar_t__ FUNC3 (struct archive_write*,size_t) ; 
 size_t FUNC4 (struct archive_write*) ; 
 scalar_t__ FUNC5 (struct archive_write*,void const*,size_t) ; 

__attribute__((used)) static int
FUNC6(struct archive_write *a, const void *buff, size_t s)
{
	const char *xp = buff;
	size_t xs = s;

	/*
	 * If a written data size is big enough to use system-call
	 * and there is no waiting data, this calls write_to_temp() in
	 * order to reduce a extra memory copy.
	 */
	if (FUNC4(a) == FUNC1() && s > (1024 * 16)) {
		struct iso9660 *iso9660 = (struct iso9660 *)a->format_data;
		xs = s % LOGICAL_BLOCK_SIZE;
		iso9660->wbuff_offset += s - xs;
		if (FUNC5(a, buff, s - xs) != ARCHIVE_OK)
			return (ARCHIVE_FATAL);
		if (xs == 0)
			return (ARCHIVE_OK);
		xp += s - xs;
	}

	while (xs) {
		size_t size = xs;
		if (size > FUNC4(a))
			size = FUNC4(a);
		FUNC0(FUNC2(a), xp, size);
		if (FUNC3(a, size) != ARCHIVE_OK)
			return (ARCHIVE_FATAL);
		xs -= size;
		xp += size;
	}
	return (ARCHIVE_OK);
}