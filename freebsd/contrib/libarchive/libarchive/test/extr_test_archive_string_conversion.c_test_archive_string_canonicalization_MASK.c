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
struct archive_string_conv {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_OK ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct archive*) ; 
 struct archive* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct archive_string_conv*) ; 
 struct archive_string_conv* FUNC3 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC10(void)
{
	struct archive *a;
	struct archive_string_conv *sconv;

	FUNC9(LC_ALL, "en_US.UTF-8");

	FUNC4((a = FUNC1()) != NULL);

	FUNC5(NULL != (sconv =
	    FUNC3(a, "UTF-8", 1)));
	FUNC8("Charset name should be UTF-8");
	FUNC7("UTF-8",
	    FUNC2(sconv));

	FUNC5(NULL != (sconv =
	    FUNC3(a, "UTF8", 1)));
	FUNC8("Charset name should be UTF-8");
	FUNC7("UTF-8",
	    FUNC2(sconv));

	FUNC5(NULL != (sconv =
	    FUNC3(a, "utf8", 1)));
	FUNC8("Charset name should be UTF-8");
	FUNC7("UTF-8",
	    FUNC2(sconv));

	FUNC5(NULL != (sconv =
	    FUNC3(a, "UTF-16BE", 1)));
	FUNC8("Charset name should be UTF-16BE");
	FUNC7("UTF-16BE",
	    FUNC2(sconv));

	FUNC5(NULL != (sconv =
	    FUNC3(a, "UTF16BE", 1)));
	FUNC8("Charset name should be UTF-16BE");
	FUNC7("UTF-16BE",
	    FUNC2(sconv));

	FUNC5(NULL != (sconv =
	    FUNC3(a, "utf16be", 1)));
	FUNC8("Charset name should be UTF-16BE");
	FUNC7("UTF-16BE",
	    FUNC2(sconv));

	FUNC5(NULL != (sconv =
	    FUNC3(a, "UTF-16LE", 1)));
	FUNC8("Charset name should be UTF-16LE");
	FUNC7("UTF-16LE",
	    FUNC2(sconv));

	FUNC5(NULL != (sconv =
	    FUNC3(a, "UTF16LE", 1)));
	FUNC8("Charset name should be UTF-16LE");
	FUNC7("UTF-16LE",
	    FUNC2(sconv));

	FUNC5(NULL != (sconv =
	    FUNC3(a, "utf16le", 1)));
	FUNC8("Charset name should be UTF-16LE");
	FUNC7("UTF-16LE",
	    FUNC2(sconv));

	FUNC6(ARCHIVE_OK, FUNC0(a));

}