#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int gl_pathc; int gl_offs; char** gl_pathv; int gl_flags; } ;
typedef  TYPE_1__ glob_t ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 size_t ARG_MAX ; 
 int GLOB_LIMIT ; 
 int GLOB_NOSPACE ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,char*) ; 
 void* FUNC1 (size_t) ; 
 void* FUNC2 (char**,size_t) ; 

__attribute__((used)) static int
FUNC3(const Char *path, glob_t *pglob, size_t *limit)
{
	char **pathv;
	int i;
	size_t newsize, len;
	char *copy;
	const Char *p;

	newsize = sizeof(*pathv) * (2 + pglob->gl_pathc + pglob->gl_offs);
	pathv = pglob->gl_pathv ?
		    FUNC2(pglob->gl_pathv, newsize) :
		    FUNC1(newsize);
	if (pathv == NULL)
		return(GLOB_NOSPACE);

	if (pglob->gl_pathv == NULL && pglob->gl_offs > 0) {
		/* first time around -- clear initial gl_offs items */
		pathv += pglob->gl_offs;
		for (i = pglob->gl_offs; --i >= 0; )
			*--pathv = NULL;
	}
	pglob->gl_pathv = pathv;

	for (p = path; *p++;)
		continue;
	len = (size_t)(p - path);
	*limit += len;
	if ((copy = FUNC1(len)) != NULL) {
		FUNC0(path, copy);
		pathv[pglob->gl_offs + pglob->gl_pathc++] = copy;
	}
	pathv[pglob->gl_offs + pglob->gl_pathc] = NULL;

	if ((pglob->gl_flags & GLOB_LIMIT) && (newsize + *limit) >= ARG_MAX) {
		errno = 0;
		return(GLOB_NOSPACE);
	}

	return(copy == NULL ? GLOB_NOSPACE : 0);
}