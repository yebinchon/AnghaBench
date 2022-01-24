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
struct archive {int dummy; } ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int ARCHIVE_EOF ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*) ; 
 int FUNC2 (struct archive*,void const**,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct archive*,void const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct archive *ar, struct archive *aw)
{
	int r;
	size_t size;
	const void *block;
	int64_t offset;

	for (;;) {
		r = FUNC2(ar, &block, &size, &offset);
		if (r == ARCHIVE_EOF)
			return (ARCHIVE_OK);
		if (r != ARCHIVE_OK) {
			FUNC5(FUNC0(ar),
			    "%s", FUNC1(ar));
			FUNC4(1);
		}
		r = (int)FUNC3(aw, block, size, offset);
		if (r != ARCHIVE_OK) {
			FUNC5(FUNC0(aw),
			    "%s", FUNC1(aw));
			return (r);
		}
	}
}