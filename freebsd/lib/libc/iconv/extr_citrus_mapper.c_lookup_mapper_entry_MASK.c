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
struct _region {int dummy; } ;
struct _memstream {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int PATH_MAX ; 
 char* _CITRUS_MAPPER_DIR ; 
 char* FUNC0 (char const*,size_t*) ; 
 char* FUNC1 (char const*,size_t*) ; 
 int FUNC2 (struct _region*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct _memstream*,struct _region*) ; 
 char* FUNC4 (struct _memstream*,char const*,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct _region*) ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,size_t) ; 

__attribute__((used)) static int
FUNC8(const char *dir, const char *mapname, void *linebuf,
    size_t linebufsize, const char **module, const char **variable)
{
	struct _region r;
	struct _memstream ms;
	const char *cp, *cq;
	char *p;
	char path[PATH_MAX];
	size_t len;
	int ret;

	/* create mapper.dir path */
	FUNC6(path, (size_t)PATH_MAX, "%s/%s", dir, _CITRUS_MAPPER_DIR);

	/* open read stream */
	ret = FUNC2(&r, path);
	if (ret)
		return (ret);

	FUNC3(&ms, &r);

	/* search the line matching to the map name */
	cp = FUNC4(&ms, mapname, &len, 0);
	if (!cp) {
		ret = ENOENT;
		goto quit;
	}
	if (!len || len > linebufsize - 1) {
		ret = EINVAL;
		goto quit;
	}

	p = linebuf;
	/* get module name */
	*module = p;
	cq = FUNC0(cp, &len);
	FUNC7(p, cp, (size_t)(cq - cp + 1));
	p += cq - cp + 1;

	/* get variable */
	*variable = p;
	cp = FUNC1(cq, &len);
	FUNC7(p, cp, len + 1);

	ret = 0;

quit:
	FUNC5(&r);
	return (ret);
}