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
 int MAX_PATH ; 
 int PATH_MAX ; 
 int /*<<< orphan*/ * FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int) ; 
 size_t FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(void)
{
#if defined(_WIN32) && !defined(__CYGWIN__)
	static int LOOP_MAX = 0;
	char buf[MAX_PATH];
	size_t cwdlen;

	if (LOOP_MAX == 0) {
		assert(_getcwd(buf, MAX_PATH) != NULL);
		cwdlen = strlen(buf);
		/* 12 characters = length of 8.3 filename */
		/* 4 characters = length of "/../" used in symlink tests */
		/* 1 character = length of extra "/" separator */
		LOOP_MAX = MAX_PATH - (int)cwdlen - 12 - 4 - 1;
	}
	return LOOP_MAX;
#elif defined(__CYGWIN__) && !defined(HAVE_CYGWIN_CONV_PATH)
	static int LOOP_MAX = 0;
	if (LOOP_MAX == 0) {
		char wbuf[PATH_MAX];
		char pbuf[PATH_MAX];
		size_t wcwdlen;
		size_t pcwdlen;
	        size_t cwdlen;
		assert(getcwd(pbuf, PATH_MAX) != NULL);
		pcwdlen = strlen(pbuf);
		cygwin_conv_to_full_win32_path(pbuf, wbuf);
		wcwdlen = strlen(wbuf);
		cwdlen = ((wcwdlen > pcwdlen) ? wcwdlen : pcwdlen);
		/* Cygwin helper needs an extra few characters. */
		LOOP_MAX = PATH_MAX - (int)cwdlen - 12 - 4 - 4;
	}
	return LOOP_MAX;
#else
	/* cygwin-1.7 ends up here, along with "normal" unix */
	return 200; /* restore pre-r278 depth */
#endif
}