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
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  errno ; 
 size_t FUNC0 (char const*,int,size_t,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int,size_t*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC7(lua_State *L)
{
	FILE	**f;
	const char	*buf;
	int	i, nargs;
	size_t	bufsz, w, wrsz;

	buf = NULL;
	bufsz = 0;
	w = 0;
	wrsz = 0;
	nargs = FUNC2(L);
	if (nargs < 2) {
		errno = EINVAL;
		return FUNC1(L, 0, NULL);
	}

	f = (FILE**)FUNC6(L, 1);

	if (f == NULL || *f == NULL) {
		errno = EINVAL;
		return FUNC1(L, 0, NULL);
	}

	/* Do a validation pass first */
	for (i = 0; i < nargs - 1; i++) {
		/*
		 * With Lua's API, lua_isstring really checks if the argument
		 * is a string or a number.  The latter will be implicitly
		 * converted to a string by our later call to lua_tolstring.
		 */
		if (!FUNC3(L, i + 2)) {
			errno = EINVAL;
			return FUNC1(L, 0, NULL);
		}
	}
	for (i = 0; i < nargs - 1; i++) {
		/* We've already validated; there's no chance of failure */
		buf = FUNC5(L, i + 2, &bufsz);
		wrsz = FUNC0(buf, 1, bufsz, *f);
		if (wrsz < bufsz)
			return FUNC1(L, 0, NULL);
		w += wrsz;
	}
	FUNC4(L, w);
	return 1;
}