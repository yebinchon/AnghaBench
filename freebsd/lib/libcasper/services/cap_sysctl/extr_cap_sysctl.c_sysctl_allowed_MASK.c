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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int CAP_SYSCTL_RECURSIVE ; 
 int NV_TYPE_NVLIST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (void*) ; 
 int* FUNC2 (int /*<<< orphan*/  const*,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int const*,int const*,size_t) ; 
 int FUNC5 (int /*<<< orphan*/  const*,char*) ; 
 char* FUNC6 (int /*<<< orphan*/  const*,int*,void**) ; 
 scalar_t__ FUNC7 (char const*,char const*) ; 
 size_t FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (char const*,char const*,size_t) ; 

__attribute__((used)) static bool
FUNC10(const nvlist_t *limits, const nvlist_t *req)
{
	const nvlist_t *limit;
	uint64_t op, reqop;
	const char *lname, *name, *reqname;
	void *cookie;
	size_t lsize, reqsize;
	const int *lmib, *reqmib;
	int type;

	if (limits == NULL)
		return (true);

	reqmib = FUNC2(req, "mib", &reqsize, NULL, 0);
	reqname = FUNC3(req, "name", NULL);
	reqop = FUNC5(req, "operation");

	cookie = NULL;
	while ((name = FUNC6(limits, &type, &cookie)) != NULL) {
		FUNC0(type == NV_TYPE_NVLIST);

		limit = FUNC1(cookie);
		op = FUNC5(limit, "operation");
		if ((reqop & op) != reqop)
			continue;

		if (reqname != NULL) {
			lname = FUNC3(limit, "name", NULL);
			if (lname == NULL)
				continue;
			if ((op & CAP_SYSCTL_RECURSIVE) == 0) {
				if (FUNC7(lname, reqname) != 0)
					continue;
			} else {
				size_t namelen;

				namelen = FUNC8(lname);
				if (FUNC9(lname, reqname, namelen) != 0)
					continue;
				if (reqname[namelen] != '.' &&
				    reqname[namelen] != '\0')
					continue;
			}
		} else {
			lmib = FUNC2(limit, "mib", &lsize, NULL, 0);
			if (lmib == NULL)
				continue;
			if (lsize > reqsize || ((op & CAP_SYSCTL_RECURSIVE) == 0 &&
			    lsize < reqsize))
				continue;
			if (FUNC4(lmib, reqmib, lsize) != 0)
				continue;
		}

		return (true);
	}

	return (false);
}