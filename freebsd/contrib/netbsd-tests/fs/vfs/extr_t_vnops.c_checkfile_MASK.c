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
typedef  int /*<<< orphan*/  sb ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char const*,char*) ; 
 scalar_t__ FUNC3 (struct stat*,struct stat*,int) ; 
 int FUNC4 (char*,struct stat*) ; 

__attribute__((used)) static void
FUNC5(const char *path, struct stat *refp)
{
	char buf[MAXPATHLEN];
	struct stat sb;
	static int n = 1;

	FUNC2(buf, sizeof(buf), path, "file");
	if (FUNC4(buf, &sb) == -1)
		FUNC1("cannot stat file %d (%s)", n, buf);
	if (FUNC3(&sb, refp, sizeof(sb)) != 0)
		FUNC0("stat mismatch %d", n);
	n++;
}