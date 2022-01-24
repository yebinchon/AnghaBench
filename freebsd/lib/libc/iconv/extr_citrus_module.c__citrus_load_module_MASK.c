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
typedef  int /*<<< orphan*/  path ;
typedef  scalar_t__ _citrus_module_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int I18NMODULE_MAJOR ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  RTLD_LAZY ; 
 int /*<<< orphan*/ * _PATH_I18NMODULE ; 
 char* FUNC0 (char*,int*,int*) ; 
 int /*<<< orphan*/ * _pathI18nModule ; 
 char* FUNC1 () ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC7 (char const*) ; 

int
FUNC8(_citrus_module_t *rhandle, const char *encname)
{
	const char *p;
	char path[PATH_MAX];
	void *handle;
	int maj, min;

	if (_pathI18nModule == NULL) {
		p = FUNC2("PATH_I18NMODULE");
		if (p != NULL && !FUNC3()) {
			_pathI18nModule = FUNC7(p);
			if (_pathI18nModule == NULL)
				return (ENOMEM);
		} else
			_pathI18nModule = _PATH_I18NMODULE;
	}

	(void)FUNC6(path, sizeof(path), "lib%s", encname);
	maj = I18NMODULE_MAJOR;
	min = -1;
	p = FUNC0(path, &maj, &min);
	if (!p)
		return (EINVAL);
	handle = FUNC4(p, RTLD_LAZY);
	if (!handle) {
		FUNC5("%s", FUNC1());
		return (EINVAL);
	}

	*rhandle = (_citrus_module_t)handle;

	return (0);
}