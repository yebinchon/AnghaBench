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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 char* KNOWNREF ; 
 char* LIBRARY ; 
 size_t PATH_MAX ; 
 char* PROGRAM ; 
 char* PROGRAM_ALIAS ; 
 char* FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 char* FUNC8 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,size_t,char*,char const*,...) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC10 (char*) ; 
 size_t FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,size_t) ; 

__attribute__((used)) static char *
FUNC13(const char *d)
{
	size_t tried_size, buff_size;
	char *buff, *tried, *pwd = NULL, *p = NULL;

#ifdef PATH_MAX
	buff_size = PATH_MAX;
#else
	buff_size = 8192;
#endif
	buff = FUNC1(buff_size, 1);
	if (buff == NULL) {
		FUNC3(stderr, "Unable to allocate memory\n");
		FUNC2(1);
	}

	/* Allocate a buffer to hold the various directories we checked. */
	tried_size = buff_size * 2;
	tried = FUNC1(tried_size, 1);
	if (tried == NULL) {
		FUNC3(stderr, "Unable to allocate memory\n");
		FUNC2(1);
	}

	/* If a dir was specified, try that */
	if (d != NULL) {
		pwd = NULL;
		FUNC9(buff, buff_size, "%s", d);
		p = FUNC8(NULL, "%s/%s", buff, KNOWNREF);
		if (p != NULL) goto success;
		FUNC12(tried, buff, tried_size - FUNC11(tried) - 1);
		FUNC12(tried, "\n", tried_size - FUNC11(tried) - 1);
		goto failure;
	}

	/* Get the current dir. */
#ifdef PATH_MAX
	pwd = getcwd(NULL, PATH_MAX);/* Solaris getcwd needs the size. */
#else
	pwd = FUNC5(NULL, 0);
#endif
	while (pwd[FUNC11(pwd) - 1] == '\n')
		pwd[FUNC11(pwd) - 1] = '\0';

	/* Look for a known file. */
	FUNC9(buff, buff_size, "%s", pwd);
	p = FUNC8(NULL, "%s/%s", buff, KNOWNREF);
	if (p != NULL) goto success;
	FUNC12(tried, buff, tried_size - FUNC11(tried) - 1);
	FUNC12(tried, "\n", tried_size - FUNC11(tried) - 1);

	FUNC9(buff, buff_size, "%s/test", pwd);
	p = FUNC8(NULL, "%s/%s", buff, KNOWNREF);
	if (p != NULL) goto success;
	FUNC12(tried, buff, tried_size - FUNC11(tried) - 1);
	FUNC12(tried, "\n", tried_size - FUNC11(tried) - 1);

#if defined(LIBRARY)
	snprintf(buff, buff_size, "%s/%s/test", pwd, LIBRARY);
#else
	FUNC9(buff, buff_size, "%s/%s/test", pwd, PROGRAM);
#endif
	p = FUNC8(NULL, "%s/%s", buff, KNOWNREF);
	if (p != NULL) goto success;
	FUNC12(tried, buff, tried_size - FUNC11(tried) - 1);
	FUNC12(tried, "\n", tried_size - FUNC11(tried) - 1);

#if defined(PROGRAM_ALIAS)
	snprintf(buff, buff_size, "%s/%s/test", pwd, PROGRAM_ALIAS);
	p = slurpfile(NULL, "%s/%s", buff, KNOWNREF);
	if (p != NULL) goto success;
	strncat(tried, buff, tried_size - strlen(tried) - 1);
	strncat(tried, "\n", tried_size - strlen(tried) - 1);
#endif

	if (FUNC6(pwd, "/usr/obj", 8) == 0) {
		FUNC9(buff, buff_size, "%s", pwd + 8);
		p = FUNC8(NULL, "%s/%s", buff, KNOWNREF);
		if (p != NULL) goto success;
		FUNC12(tried, buff, tried_size - FUNC11(tried) - 1);
		FUNC12(tried, "\n", tried_size - FUNC11(tried) - 1);

		FUNC9(buff, buff_size, "%s/test", pwd + 8);
		p = FUNC8(NULL, "%s/%s", buff, KNOWNREF);
		if (p != NULL) goto success;
		FUNC12(tried, buff, tried_size - FUNC11(tried) - 1);
		FUNC12(tried, "\n", tried_size - FUNC11(tried) - 1);
	}

failure:
	FUNC7("Unable to locate known reference file %s\n", KNOWNREF);
	FUNC7("  Checked following directories:\n%s\n", tried);
	FUNC7("Use -r option to specify full path to reference directory\n");
#if defined(_WIN32) && !defined(__CYGWIN__) && defined(_DEBUG)
	DebugBreak();
#endif
	FUNC2(1);

success:
	FUNC4(p);
	FUNC4(pwd);
	FUNC4(tried);

	/* Copy result into a fresh buffer to reduce memory usage. */
	p = FUNC10(buff);
	FUNC4(buff);
	return p;
}