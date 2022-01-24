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
typedef  int /*<<< orphan*/  archive_skip_callback ;
typedef  int /*<<< orphan*/  archive_read_callback ;
typedef  int /*<<< orphan*/  archive_open_callback ;
typedef  int /*<<< orphan*/  archive_close_callback ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*) ; 
 struct archive* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct archive*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(int formatted, archive_open_callback *o, archive_read_callback *r,
    archive_skip_callback *s, archive_close_callback *c,
    int rv, const char *msg)
{
	struct archive* a = FUNC2();
	if (formatted)
	    FUNC5(ARCHIVE_OK,
		FUNC4(a));
	FUNC5(rv,
	    FUNC3(a, NULL, o, r, s, c));
	FUNC6(msg, FUNC0(a));
	FUNC1(a);
}