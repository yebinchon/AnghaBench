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
 int /*<<< orphan*/  FUNC1 (struct archive*) ; 
 struct archive* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct archive*,char const*,int) ; 
 int FUNC4 (struct archive*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void
FUNC11(const char *name)
{
	struct archive* a = FUNC2();
	int r;

	r = FUNC4(a);
	if((ARCHIVE_WARN == r && !FUNC8()) || ARCHIVE_WARN > r) {
		FUNC10("bzip2 unsupported");
		return;
	}

	FUNC7(a, ARCHIVE_OK, FUNC5(a));

	FUNC9(name);
	FUNC7(a, ARCHIVE_OK, FUNC3(a, name, 2));
	/* bzip2 and none */
	FUNC6(2, FUNC0(a));
	
	FUNC1(a);
}