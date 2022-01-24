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
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int CACHE_SIZE ; 
 int FA_LSTAT ; 
 int FA_OPEN ; 
 int /*<<< orphan*/  NV_FLAG_NO_UNIQUE ; 
 int NV_TYPE_NULL ; 
 int O_CREAT ; 
 int allcached ; 
 int allowed_operations ; 
 void* cacheposition ; 
 int capflags ; 
 char const* lastname ; 
 scalar_t__ FUNC0 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,struct stat*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC6 (int /*<<< orphan*/  const*,int*,void**) ; 
 int FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char const*,char const*) ; 

__attribute__((used)) static void
FUNC9(nvlist_t *nvlout, const nvlist_t *limits,
    const char *curent_name)
{
	int type, i, fd;
	void *cookie;
	nvlist_t *new;
	const char *fname;
	struct stat sb;

	if ((capflags & O_CREAT) != 0) {
		allcached = true;
		return;
	}

	cookie = cacheposition;
	for (i = 0; i < CACHE_SIZE + 1; i++) {
		fname = FUNC6(limits, &type, &cookie);
		if (fname == NULL) {
			cacheposition = NULL;
			lastname = NULL;
			allcached = true;
			return;
		}
		/* We doing that to catch next element name. */
		if (i == CACHE_SIZE) {
			break;
		}

		if (type != NV_TYPE_NULL ||
		    (curent_name != NULL && FUNC8(fname, curent_name) == 0)) {
			curent_name = NULL;
			i--;
			continue;
		}

		new = FUNC3(NV_FLAG_NO_UNIQUE);
		if ((allowed_operations & FA_OPEN) != 0) {
			fd = FUNC7(fname);
			if (fd < 0) {
				i--;
				FUNC4(new);
				continue;
			}
			FUNC5(new, "fd", fd);
		}
		if ((allowed_operations & FA_LSTAT) != 0) {
			if (FUNC0(fname, &sb) < 0) {
				i--;
				FUNC4(new);
				continue;
			}
			FUNC1(new, "stat", &sb, sizeof(sb));
		}

		FUNC2(nvlout, fname, new);
	}
	cacheposition = cookie;
	lastname = fname;
}