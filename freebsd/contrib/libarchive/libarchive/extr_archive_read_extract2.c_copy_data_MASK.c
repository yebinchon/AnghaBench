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
struct archive_read_extract {int /*<<< orphan*/  extract_progress_user_data; int /*<<< orphan*/  (* extract_progress ) (int /*<<< orphan*/ ) ;} ;
struct archive_read {int dummy; } ;
struct archive {int dummy; } ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int ARCHIVE_EOF ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 struct archive_read_extract* FUNC0 (struct archive_read*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*) ; 
 int FUNC3 (struct archive*,void const**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct archive*,void const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct archive *ar, struct archive *aw)
{
	int64_t offset;
	const void *buff;
	struct archive_read_extract *extract;
	size_t size;
	int r;

	extract = FUNC0((struct archive_read *)ar);
	if (extract == NULL)
		return (ARCHIVE_FATAL);
	for (;;) {
		r = FUNC3(ar, &buff, &size, &offset);
		if (r == ARCHIVE_EOF)
			return (ARCHIVE_OK);
		if (r != ARCHIVE_OK)
			return (r);
		r = (int)FUNC5(aw, buff, size, offset);
		if (r < ARCHIVE_WARN)
			r = ARCHIVE_WARN;
		if (r < ARCHIVE_OK) {
			FUNC4(ar, FUNC1(aw),
			    "%s", FUNC2(aw));
			return (r);
		}
		if (extract->extract_progress)
			(extract->extract_progress)
			    (extract->extract_progress_user_data);
	}
}