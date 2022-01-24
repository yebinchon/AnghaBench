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
 int /*<<< orphan*/  FUNC0 (struct archive*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*) ; 
 struct archive* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct archive*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(int pristine)
{
	struct archive* a = FUNC2();

	if (!pristine) {
		FUNC3(a);
		FUNC4(a);
        }

	FUNC5(ARCHIVE_OK, FUNC0(a, "pass1"));
	/* An empty passphrase cannot be accepted. */
	FUNC5(ARCHIVE_FAILED, FUNC0(a, ""));
	/* NULL passphrases cannot be accepted. */
	FUNC5(ARCHIVE_FAILED, FUNC0(a, NULL));

	FUNC1(a);
}