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
struct archive_read {int /*<<< orphan*/  archive; TYPE_1__* format; } ;
struct _7zip {scalar_t__ seek_base; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ SFX_MAX_ADDR ; 
 scalar_t__ SFX_MIN_ADDR ; 
 void* FUNC0 (struct archive_read*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_read*,size_t) ; 
 scalar_t__ FUNC2 (struct archive_read*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static int
FUNC5(struct archive_read *a, ssize_t bytes_avail)
{
	const void *h;
	const char *p, *q;
	size_t skip, offset;
	ssize_t bytes, window;

	/*
	 * If bytes_avail > SFX_MIN_ADDR we do not have to call
	 * __archive_read_seek() at this time since we have
	 * already had enough data.
	 */
	if (bytes_avail > SFX_MIN_ADDR)
		FUNC1(a, SFX_MIN_ADDR);
	else if (FUNC2(a, SFX_MIN_ADDR, SEEK_SET) < 0)
		return (ARCHIVE_FATAL);

	offset = 0;
	window = 1;
	while (offset + window <= SFX_MAX_ADDR - SFX_MIN_ADDR) {
		h = FUNC0(a, window, &bytes);
		if (h == NULL) {
			/* Remaining bytes are less than window. */
			window >>= 1;
			if (window < 0x40)
				goto fatal;
			continue;
		}
		if (bytes < 6) {
			/* This case might happen when window == 1. */
			window = 4096;
			continue;
		}
		p = (const char *)h;
		q = p + bytes;

		/*
		 * Scan ahead until we find something that looks
		 * like the 7-Zip header.
		 */
		while (p + 32 < q) {
			int step = FUNC4(p);
			if (step == 0) {
				struct _7zip *zip =
				    (struct _7zip *)a->format->data;
				skip = p - (const char *)h;
				FUNC1(a, skip);
				zip->seek_base = SFX_MIN_ADDR + offset + skip;
				return (ARCHIVE_OK);
			}
			p += step;
		}
		skip = p - (const char *)h;
		FUNC1(a, skip);
		offset += skip;
		if (window == 1)
			window = 4096;
	}
fatal:
	FUNC3(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
	    "Couldn't find out 7-Zip header");
	return (ARCHIVE_FATAL);
}