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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (char const*,struct stat*) ; 

const char *
FUNC3(const char *origname)
{
	struct stat stslash, stchar;

	if (FUNC2("/", &stslash) < 0) {
		FUNC1("Can't stat `/'");
		return (origname);
	}
	if (FUNC2(origname, &stchar) < 0) {
		FUNC1("Can't stat %s\n", origname);
		return (origname);
	}
	if (!FUNC0(stchar.st_mode)) {
		FUNC1("%s is not a char device\n", origname);
	}
	return (origname);
}