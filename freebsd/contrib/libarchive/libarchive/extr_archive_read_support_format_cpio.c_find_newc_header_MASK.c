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
struct archive_read {int /*<<< orphan*/  archive; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 void* FUNC0 (struct archive_read*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_read*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (char const*,int) ; 
 scalar_t__ FUNC4 (char*,char const*,int) ; 
 int newc_header_size ; 

__attribute__((used)) static int
FUNC5(struct archive_read *a)
{
	const void *h;
	const char *p, *q;
	size_t skip, skipped = 0;
	ssize_t bytes;

	for (;;) {
		h = FUNC0(a, newc_header_size, &bytes);
		if (h == NULL)
			return (ARCHIVE_FATAL);
		p = h;
		q = p + bytes;

		/* Try the typical case first, then go into the slow search.*/
		if (FUNC4("07070", p, 5) == 0
		    && (p[5] == '1' || p[5] == '2')
		    && FUNC3(p, newc_header_size))
			return (ARCHIVE_OK);

		/*
		 * Scan ahead until we find something that looks
		 * like a newc header.
		 */
		while (p + newc_header_size <= q) {
			switch (p[5]) {
			case '1':
			case '2':
				if (FUNC4("07070", p, 5) == 0
				    && FUNC3(p, newc_header_size)) {
					skip = p - (const char *)h;
					FUNC1(a, skip);
					skipped += skip;
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