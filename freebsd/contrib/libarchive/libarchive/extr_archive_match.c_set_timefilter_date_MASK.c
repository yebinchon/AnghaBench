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
typedef  scalar_t__ time_t ;
struct archive_match {int /*<<< orphan*/  archive; int /*<<< orphan*/  now; } ;

/* Variables and functions */
 int ARCHIVE_FAILED ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC2 (struct archive_match*,int,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct archive_match *a, int timetype, const char *datestr)
{
	time_t t;

	if (datestr == NULL || *datestr == '\0') {
		FUNC0(&(a->archive), EINVAL, "date is empty");
		return (ARCHIVE_FAILED);
	}
	t = FUNC1(a->now, datestr);
	if (t == (time_t)-1) {
		FUNC0(&(a->archive), EINVAL, "invalid date string");
		return (ARCHIVE_FAILED);
	}
	return FUNC2(a, timetype, t, 0, t, 0);
}