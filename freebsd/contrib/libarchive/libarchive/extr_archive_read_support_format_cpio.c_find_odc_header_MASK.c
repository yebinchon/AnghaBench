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
struct TYPE_2__ {void* archive_format; } ;
struct archive_read {TYPE_1__ archive; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 void* ARCHIVE_FORMAT_CPIO_AFIO_LARGE ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 void* FUNC0 (struct archive_read*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_read*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (char const*,int) ; 
 scalar_t__ FUNC4 (char const*,int) ; 
 scalar_t__ FUNC5 (char*,char const*,int) ; 
 int odc_header_size ; 

__attribute__((used)) static int
FUNC6(struct archive_read *a)
{
	const void *h;
	const char *p, *q;
	size_t skip, skipped = 0;
	ssize_t bytes;

	for (;;) {
		h = FUNC0(a, odc_header_size, &bytes);
		if (h == NULL)
			return (ARCHIVE_FATAL);
		p = h;
		q = p + bytes;

		/* Try the typical case first, then go into the slow search.*/
		if (FUNC5("070707", p, 6) == 0 && FUNC4(p, odc_header_size))
			return (ARCHIVE_OK);
		if (FUNC5("070727", p, 6) == 0 && FUNC3(p, bytes)) {
			a->archive.archive_format = ARCHIVE_FORMAT_CPIO_AFIO_LARGE;
			return (ARCHIVE_OK);
		}

		/*
		 * Scan ahead until we find something that looks
		 * like an odc header.
		 */
		while (p + odc_header_size <= q) {
			switch (p[5]) {
			case '7':
				if ((FUNC5("070707", p, 6) == 0
				    && FUNC4(p, odc_header_size))
				    || (FUNC5("070727", p, 6) == 0
				        && FUNC3(p, q - p))) {
					skip = p - (const char *)h;
					FUNC1(a, skip);
					skipped += skip;
					if (p[4] == '2')
						a->archive.archive_format =
						    ARCHIVE_FORMAT_CPIO_AFIO_LARGE;
					if (skipped > 0) {
						FUNC2(&a->archive,
						    0,
						    "Skipped %d bytes before "
						    "finding valid header",
						    (int)skipped);
						return (ARCHIVE_WARN);
					}
					return (ARCHIVE_OK);
				}
				p += 2;
				break;
			case '0':
				p++;
				break;
			default:
				p += 6;
				break;
			}
		}
		skip = p - (const char *)h;
		FUNC1(a, skip);
		skipped += skip;
	}
}