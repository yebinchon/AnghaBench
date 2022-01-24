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
typedef  int wchar_t ;
struct archive_match {int /*<<< orphan*/  inclusions; int /*<<< orphan*/  archive; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FAILED ; 
 int /*<<< orphan*/  ARCHIVE_MATCH_MAGIC ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_STATE_NEW ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (struct archive_match*,int /*<<< orphan*/ *,int const*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

int
FUNC3(struct archive *_a, const wchar_t *pattern)
{
	struct archive_match *a;
	int r;

	FUNC1(_a, ARCHIVE_MATCH_MAGIC,
	    ARCHIVE_STATE_NEW, "archive_match_include_pattern_w");
	a = (struct archive_match *)_a;

	if (pattern == NULL || *pattern == L'\0') {
		FUNC2(&(a->archive), EINVAL, "pattern is empty");
		return (ARCHIVE_FAILED);
	}
	if ((r = FUNC0(a, &(a->inclusions), pattern)) != ARCHIVE_OK)
		return (r);
	return (ARCHIVE_OK);
}