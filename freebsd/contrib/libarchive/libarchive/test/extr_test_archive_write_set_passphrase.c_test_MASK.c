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
struct archive_write {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_FAILED ; 
 int /*<<< orphan*/  ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive_write*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*) ; 
 struct archive* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct archive*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(int pristine)
{
	struct archive* a = FUNC3();
	struct archive_write* aw = (struct archive_write *)a;

	if (!pristine) {
		FUNC1(a);
		FUNC4(a);
        }

	FUNC6(ARCHIVE_OK, FUNC5(a, "pass1"));
	/* An empty passphrase cannot be accepted. */
	FUNC6(ARCHIVE_FAILED, FUNC5(a, ""));
	/* NULL passphrases cannot be accepted. */
	FUNC6(ARCHIVE_FAILED, FUNC5(a, NULL));
	/* Check a passphrase. */
	FUNC7("pass1", FUNC0(aw));
	/* Change the passphrase. */
	FUNC6(ARCHIVE_OK, FUNC5(a, "pass2"));
	FUNC7("pass2", FUNC0(aw));

	FUNC2(a);
}