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

/* Variables and functions */
 int ARCHIVE_EOF ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  BYTES_PER_BLOCK ; 
 int /*<<< orphan*/ * a ; 
 int /*<<< orphan*/  ae ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void
FUNC6(const char* filename)
{
	int r;

	if (FUNC4(a, filename, BYTES_PER_BLOCK)
	    != ARCHIVE_OK)
		FUNC5();
	else if (r = FUNC3(a, &ae),
		 r != ARCHIVE_OK && r != ARCHIVE_EOF)
		FUNC5();
	else if (r == ARCHIVE_EOF)
		/* for empty payloads don't try and read data */
		;
	else if (FUNC1(a, 1) != ARCHIVE_OK)
		FUNC5();
	if (FUNC0(a) != ARCHIVE_OK)
		FUNC5();
	FUNC2(a);
	a = NULL;
}