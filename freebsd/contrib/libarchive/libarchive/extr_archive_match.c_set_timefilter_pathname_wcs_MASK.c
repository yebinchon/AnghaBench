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
struct archive_string {int /*<<< orphan*/  s; } ;
struct archive_match {int /*<<< orphan*/  archive; } ;

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
 int FUNC5 (struct archive_match*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int const*) ; 

__attribute__((used)) static int
FUNC7(struct archive_match *a, int timetype,
    const wchar_t *path)
{
	struct archive_string as;
	int r;

	if (path == NULL || *path == L'\0') {
		FUNC0(&(a->archive), EINVAL, "pathname is empty");
		return (ARCHIVE_FAILED);
	}

	/* Convert WCS filename to MBS filename. */
	FUNC3(&as);
	if (FUNC1(&as, path, FUNC6(path)) < 0) {
		FUNC2(&as);
		if (errno == ENOMEM)
			return (FUNC4(a));
		FUNC0(&(a->archive), -1,
		    "Failed to convert WCS to MBS");
		return (ARCHIVE_FAILED);
	}

	r = FUNC5(a, timetype, as.s);
	FUNC2(&as);

	return (r);
}