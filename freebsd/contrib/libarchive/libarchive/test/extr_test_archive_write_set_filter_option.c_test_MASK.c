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

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_FAILED ; 
 int /*<<< orphan*/  ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*) ; 
 struct archive* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct archive*,int /*<<< orphan*/ ,char*,char*,char*) ; 

__attribute__((used)) static void
FUNC4(int pristine)
{
	struct archive* a = FUNC2();

	if (!pristine)
		FUNC0(a);

	FUNC3(a, ARCHIVE_OK, NULL, NULL, NULL);
	FUNC3(a, ARCHIVE_OK, "", "", "");

	FUNC3(a, ARCHIVE_FAILED, NULL, "fubar", NULL);
	FUNC3(a, ARCHIVE_FAILED, NULL, "fubar", "snafu");
	FUNC3(a, ARCHIVE_FAILED, "fubar", "snafu", NULL);
	FUNC3(a, ARCHIVE_FAILED, "fubar", "snafu", "betcha");

	FUNC1(a);
}