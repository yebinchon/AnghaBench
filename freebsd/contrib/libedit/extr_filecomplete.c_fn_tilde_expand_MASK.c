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
struct passwd {char const* pw_dir; } ;
typedef  int /*<<< orphan*/  pwbuf ;

/* Variables and functions */
 char* FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct passwd* FUNC2 (char*) ; 
 struct passwd* FUNC3 (char*,struct passwd*,char*,int,...) ; 
 struct passwd* FUNC4 (int /*<<< orphan*/ ) ; 
 struct passwd* FUNC5 (int /*<<< orphan*/ ,struct passwd*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,size_t,char*,char const*,char const*) ; 
 char* FUNC8 (char const*,char) ; 
 char* FUNC9 (char const*) ; 
 int FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,size_t) ; 

char *
FUNC12(const char *txt)
{
#if defined(HAVE_GETPW_R_POSIX) || defined(HAVE_GETPW_R_DRAFT)
	struct passwd pwres;
	char pwbuf[1024];
#endif
	struct passwd *pass;
	char *temp;
	size_t len = 0;

	if (txt[0] != '~')
		return FUNC9(txt);

	temp = FUNC8(txt + 1, '/');
	if (temp == NULL) {
		temp = FUNC9(txt + 1);
		if (temp == NULL)
			return NULL;
	} else {
		/* text until string after slash */
		len = (size_t)(temp - txt + 1);
		temp = FUNC0(len, sizeof(*temp));
		if (temp == NULL)
			return NULL;
		(void)FUNC11(temp, txt + 1, len - 2);
		temp[len - 2] = '\0';
	}
	if (temp[0] == 0) {
#ifdef HAVE_GETPW_R_POSIX
		if (getpwuid_r(getuid(), &pwres, pwbuf, sizeof(pwbuf),
		    &pass) != 0)
			pass = NULL;
#elif HAVE_GETPW_R_DRAFT
		pass = getpwuid_r(getuid(), &pwres, pwbuf, sizeof(pwbuf));
#else
		pass = FUNC4(FUNC6());
#endif
	} else {
#ifdef HAVE_GETPW_R_POSIX
		if (getpwnam_r(temp, &pwres, pwbuf, sizeof(pwbuf), &pass) != 0)
			pass = NULL;
#elif HAVE_GETPW_R_DRAFT
		pass = getpwnam_r(temp, &pwres, pwbuf, sizeof(pwbuf));
#else
		pass = FUNC2(temp);
#endif
	}
	FUNC1(temp);		/* value no more needed */
	if (pass == NULL)
		return FUNC9(txt);

	/* update pointer txt to point at string immedially following */
	/* first slash */
	txt += len;

	len = FUNC10(pass->pw_dir) + 1 + FUNC10(txt) + 1;
	temp = FUNC0(len, sizeof(*temp));
	if (temp == NULL)
		return NULL;
	(void)FUNC7(temp, len, "%s/%s", pass->pw_dir, txt);

	return temp;
}