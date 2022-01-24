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
typedef  int uint32_t ;
struct _citrus_csmapper {int dummy; } ;
typedef  int /*<<< orphan*/  pivot ;
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  buf2 ;
typedef  int /*<<< orphan*/  buf1 ;

/* Variables and functions */
 int /*<<< orphan*/  CS_ALIAS ; 
 int ENOENT ; 
 int PATH_MAX ; 
 int _CSMAPPER_F_PREVENT_PIVOT ; 
 int /*<<< orphan*/  _LOOKUP_CASE_IGNORE ; 
 int /*<<< orphan*/  _PATH_CSMAPPER ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char const*,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct _citrus_csmapper**,char*) ; 
 int FUNC3 (char const*,char const*,char*,int,unsigned long*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct _citrus_csmapper**) ; 
 int /*<<< orphan*/  maparea ; 
 int FUNC5 (int /*<<< orphan*/ ,struct _citrus_csmapper**,char const*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*) ; 

int
FUNC8(struct _citrus_csmapper * __restrict * __restrict rcsm,
    const char * __restrict src, const char * __restrict dst, uint32_t flags,
    unsigned long *rnorm)
{
	const char *realsrc, *realdst;
	char buf1[PATH_MAX], buf2[PATH_MAX], key[PATH_MAX], pivot[PATH_MAX];
	unsigned long norm;
	int ret;

	norm = 0;

	ret = FUNC0(&maparea, _PATH_CSMAPPER);
	if (ret)
		return (ret);

	realsrc = FUNC1(CS_ALIAS, src, buf1, sizeof(buf1),
	    _LOOKUP_CASE_IGNORE);
	realdst = FUNC1(CS_ALIAS, dst, buf2, sizeof(buf2),
	    _LOOKUP_CASE_IGNORE);
	if (!FUNC7(realsrc, realdst)) {
		ret = FUNC4(maparea, rcsm);
		if (ret == 0 && rnorm != NULL)
			*rnorm = 0;
		return (ret);
	}

	FUNC6(key, sizeof(key), "%s/%s", realsrc, realdst);

	ret = FUNC2(maparea, rcsm, key);
	if (ret == 0) {
		if (rnorm != NULL)
			*rnorm = 0;
		return (0);
	}
	if (ret != ENOENT || (flags & _CSMAPPER_F_PREVENT_PIVOT)!=0)
		return (ret);

	ret = FUNC3(realsrc, realdst, pivot, sizeof(pivot), &norm);
	if (ret)
		return (ret);

	ret = FUNC5(maparea, rcsm, realsrc, pivot, realdst);
	if (ret == 0 && rnorm != NULL)
		*rnorm = norm;

	return (ret);
}