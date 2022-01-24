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
 int /*<<< orphan*/  ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 int /*<<< orphan*/  FUNC0 (struct archive*) ; 
 int FUNC1 (struct archive*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*) ; 
 struct archive* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct archive*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void
FUNC11(void)
{
	char buff[4096];
	struct archive* a = FUNC3();
	int r;

	FUNC8(a, ARCHIVE_OK, FUNC6(a));
	FUNC8(a, ARCHIVE_OK, FUNC5(a, 10));

	r = FUNC1(a);
	if((ARCHIVE_WARN == r && !FUNC9()) || ARCHIVE_WARN > r) {
		FUNC10("bzip2 unsupported");
		return;
	}
	FUNC8(a, ARCHIVE_OK, FUNC4(a, buff, 4096, 0));
	/* bzip2 and none */
	FUNC7(2, FUNC0(a));
	FUNC2(a);
}