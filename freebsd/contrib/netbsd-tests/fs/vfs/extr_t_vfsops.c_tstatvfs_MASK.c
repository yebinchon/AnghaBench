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
struct statvfs {scalar_t__ f_namemax; int /*<<< orphan*/  f_mntonname; int /*<<< orphan*/  f_fstypename; } ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ MAXNAMLEN ; 
 int /*<<< orphan*/  ST_WAIT ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/  const*,char*) ; 
 int FUNC6 (char const*,struct statvfs*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(const atf_tc_t *tc, const char *path)
{
	const char *fstype = FUNC5(tc, "X-fs.mntname");
	struct statvfs svb;

	if (FUNC6(path, &svb, ST_WAIT) == -1)
		FUNC4("statvfs");

	FUNC0(svb.f_namemax > 0 && svb.f_namemax <= MAXNAMLEN);
	if (!(FUNC3(tc) || FUNC2(tc)))
		FUNC1(svb.f_fstypename, fstype);
	FUNC1(svb.f_mntonname, path);
}