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
struct module_stat {int version; char const* name; } ;
struct kld_file_stat {int version; char const* name; } ;
typedef  int /*<<< orphan*/  mstat ;
typedef  int /*<<< orphan*/  fstat ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,struct kld_file_stat*) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,struct module_stat*) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 
 size_t FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char const*,char const*,int) ; 
 char* FUNC8 (char const*,char*) ; 

int
FUNC9(const char *name)
{
	struct kld_file_stat fstat;
	struct module_stat mstat;
	const char *ko;
	int fid, mid;

	for (fid = FUNC1(0); fid > 0; fid = FUNC1(fid)) {
		fstat.version = sizeof(fstat);
		if (FUNC2(fid, &fstat) != 0)
			continue;
		/* check if the file name matches the supplied name */
		if (FUNC5(fstat.name, name) == 0)
			return (1);
		/* strip .ko and try again */
		if ((ko = FUNC8(fstat.name, ".ko")) != NULL &&
		    FUNC6(name) == (size_t)(ko - fstat.name) &&
		    FUNC7(fstat.name, name, ko - fstat.name) == 0)
			return (1);
		/* look for a matching module within the file */
		for (mid = FUNC0(fid); mid > 0; mid = FUNC3(mid)) {
			mstat.version = sizeof(mstat);
			if (FUNC4(mid, &mstat) != 0)
				continue;
			if (FUNC5(mstat.name, name) == 0)
				return (1);
		}
	}
	return (0);
}