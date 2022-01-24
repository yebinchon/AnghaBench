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
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  sb1 ;
typedef  int /*<<< orphan*/  pb ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct stat*,struct stat*,int) ; 
 int FUNC4 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 

__attribute__((used)) static void
FUNC7(const atf_tc_t *tc, const char *mountpath)
{
	char pb[MAXPATHLEN], final[MAXPATHLEN];
	struct stat sb1, sb2;

	FUNC6(final, mountpath);
	FUNC5(pb, sizeof(pb), "%s/../%s", mountpath, FUNC2(final));
	if (FUNC4(pb, &sb1) == -1)
		FUNC1("stat 1");

	FUNC5(pb, sizeof(pb), "%s/./../%s", mountpath, FUNC2(final));
	if (FUNC4(pb, &sb2) == -1)
		FUNC1("stat 2");

	FUNC0(FUNC3(&sb1, &sb2, sizeof(sb1)) == 0);
}