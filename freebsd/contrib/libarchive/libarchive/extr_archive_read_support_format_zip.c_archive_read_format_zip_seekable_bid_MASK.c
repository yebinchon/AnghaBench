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
struct zip {int dummy; } ;
struct archive_read {TYPE_1__* format; } ;
typedef  scalar_t__ int64_t ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 char* FUNC0 (struct archive_read*,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct archive_read*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 
 int FUNC3 (struct zip*,char const*,scalar_t__) ; 
 int FUNC4 (struct archive_read*,struct zip*,char const*) ; 
 scalar_t__ FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(struct archive_read *a, int best_bid)
{
	struct zip *zip = (struct zip *)a->format->data;
	int64_t file_size, current_offset;
	const char *p;
	int i, tail;

	/* If someone has already bid more than 32, then avoid
	   trashing the look-ahead buffers with a seek. */
	if (best_bid > 32)
		return (-1);

	file_size = FUNC1(a, 0, SEEK_END);
	if (file_size <= 0)
		return 0;

	/* Search last 16k of file for end-of-central-directory
	 * record (which starts with PK\005\006) */
	tail = (int)FUNC5(1024 * 16, file_size);
	current_offset = FUNC1(a, -tail, SEEK_END);
	if (current_offset < 0)
		return 0;
	if ((p = FUNC0(a, (size_t)tail, NULL)) == NULL)
		return 0;
	/* Boyer-Moore search backwards from the end, since we want
	 * to match the last EOCD in the file (there can be more than
	 * one if there is an uncompressed Zip archive as a member
	 * within this Zip archive). */
	for (i = tail - 22; i > 0;) {
		switch (p[i]) {
		case 'P':
			if (FUNC2(p + i, "PK\005\006", 4) == 0) {
				int ret = FUNC3(zip, p + i,
				    current_offset + i);
				/* Zip64 EOCD locator precedes
				 * regular EOCD if present. */
				if (i >= 20 && FUNC2(p + i - 20, "PK\006\007", 4) == 0) {
					int ret_zip64 = FUNC4(a, zip, p + i - 20);
					if (ret_zip64 > ret)
						ret = ret_zip64;
				}
				return (ret);
			}
			i -= 4;
			break;
		case 'K': i -= 1; break;
		case 005: i -= 2; break;
		case 006: i -= 3; break;
		default: i -= 4; break;
		}
	}
	return 0;
}