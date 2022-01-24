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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 size_t EILSEQ ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int VIS_OCTAL ; 
 int VIS_WHITE ; 
 size_t errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 char* FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int) ; 
 size_t FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC11(const char *locale, const char *illegal, const char *legal)
{
	char buf[64];
	size_t stateful, ret;
	char *str;

	FUNC2(FUNC6(LC_ALL, "C"), "C");
#ifdef __NetBSD__
	ATF_REQUIRE(setlocale(LC_CTYPE, locale) != NULL);
#else
	if (FUNC6(LC_CTYPE, locale) == NULL) {
		FUNC3(stderr, "Locale %s not found.\n", locale);
		return;
	}
#endif

	FUNC0((str = FUNC6(LC_ALL, NULL)) != NULL);
	(void)FUNC5("Using locale: %s\n", str);

	stateful = FUNC10(NULL, L'\0');
	(void)FUNC5("Locale is state-%sdependent\n",
		stateful ? "in" : "");

	/* initialize internal state */
	ret = FUNC4(NULL, NULL, 0);
	FUNC0(stateful ? ret : !ret);

	(void)FUNC9(buf, illegal, VIS_WHITE | VIS_OCTAL);
	(void)FUNC5("Checking illegal sequence: \"%s\"\n", buf);

	ret = FUNC4(NULL, illegal, FUNC8(illegal));
	(void)FUNC5("mbtowc() returned: %zd\n", ret);
	FUNC1(ret, (size_t)-1);
	(void)FUNC5("errno: %s\n", FUNC7(errno));
	FUNC1(errno, EILSEQ);

	/* if this is stateless encoding, this re-initialization is not required. */
	if (stateful) {
		/* re-initialize internal state */
		ret = FUNC4(NULL, NULL, 0);
		FUNC0(stateful ? ret : !ret);
	}

	/* valid multibyte sequence case */
	(void)FUNC9(buf, legal, VIS_WHITE | VIS_OCTAL);
	(void)FUNC5("Checking legal sequence: \"%s\"\n", buf);

	errno = 0;
	ret = FUNC4(NULL, legal, FUNC8(legal));
	(void)FUNC5("mbtowc() returned: %zd\n", ret);
	FUNC0(ret != (size_t)-1);
	(void)FUNC5("errno: %s\n", FUNC7(errno));
	FUNC1(errno, 0);

	(void)FUNC5("Ok.\n");
}