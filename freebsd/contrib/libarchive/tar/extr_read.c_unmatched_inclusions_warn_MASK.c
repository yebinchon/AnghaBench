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
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int FUNC0 (struct archive*) ; 
 int FUNC1 (struct archive*,char const**) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 

__attribute__((used)) static int
FUNC4(struct archive *matching, const char *msg)
{
	const char *p;
	int r;

	if (matching == NULL)
		return (0);

	while ((r = FUNC1(
	    matching, &p)) == ARCHIVE_OK)
		FUNC3(0, "%s: %s", p, msg);
	if (r == ARCHIVE_FATAL)
		FUNC2(1, errno, "Out of memory");

	return (FUNC0(matching));
}