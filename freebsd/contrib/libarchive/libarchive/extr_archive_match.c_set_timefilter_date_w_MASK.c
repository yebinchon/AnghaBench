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
typedef  scalar_t__ time_t ;
struct archive_string {int /*<<< orphan*/  s; } ;
struct archive_match {int /*<<< orphan*/  archive; int /*<<< orphan*/  now; } ;

/* Variables and functions */
 int ARCHIVE_FAILED ; 
 int EINVAL ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC1 (struct archive_string*,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_string*) ; 
 scalar_t__ errno ; 
 int FUNC4 (struct archive_match*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct archive_match*,int,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int const*) ; 

__attribute__((used)) static int
FUNC8(struct archive_match *a, int timetype,
    const wchar_t *datestr)
{
	struct archive_string as;
	time_t t;

	if (datestr == NULL || *datestr == L'\0') {
		FUNC0(&(a->archive), EINVAL, "date is empty");
		return (ARCHIVE_FAILED);
	}

	FUNC3(&as);
	if (FUNC1(&as, datestr, FUNC7(datestr)) < 0) {
		FUNC2(&as);
		if (errno == ENOMEM)
			return (FUNC4(a));
		FUNC0(&(a->archive), -1,
		    "Failed to convert WCS to MBS");
		return (ARCHIVE_FAILED);
	}
	t = FUNC5(a->now, as.s);
	FUNC2(&as);
	if (t == (time_t)-1) {
		FUNC0(&(a->archive), EINVAL, "invalid date string");
		return (ARCHIVE_FAILED);
	}
	return FUNC6(a, timetype, t, 0, t, 0);
}