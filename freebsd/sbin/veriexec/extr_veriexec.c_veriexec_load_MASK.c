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
 int /*<<< orphan*/  EX_NOINPUT ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  VEF_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 scalar_t__ FUNC3 (char const*,unsigned char*) ; 
 unsigned char* FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 

__attribute__((used)) static int
FUNC6(const char *manifest)
{
	unsigned char *content;
	int rc;

	content = FUNC4(manifest, VEF_VERBOSE);
	if (!content)
		FUNC1(EX_USAGE, "cannot verify %s", manifest);
	if (FUNC3(manifest, content)) {
		rc = FUNC5();
	} else {
		FUNC0(EX_NOINPUT, "cannot load %s", manifest);
	}
	FUNC2(content);
	return (rc);
}