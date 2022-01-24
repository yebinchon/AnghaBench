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
typedef  int wchar_t ;
struct test {char* locale; char* data; size_t wclen; size_t* mblen; } ;
typedef  int /*<<< orphan*/  st ;
typedef  int /*<<< orphan*/  mbstate_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int MB_LEN_MAX ; 
 char TC_WCRTOMB_ST ; 
 char TC_WCTOMB ; 
 int VIS_OCTAL ; 
 int VIS_WHITE ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 size_t FUNC6 (int*,char const**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 char* FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 size_t FUNC11 (char*,int,int /*<<< orphan*/ *) ; 
 size_t FUNC12 (char*,int) ; 

__attribute__((used)) static void
FUNC13(const struct test *t, char tc)
{
	wchar_t wcs[16 + 2];
	char buf[128];
	char cs[MB_LEN_MAX];
	const char *pcs;
	char *str;
	mbstate_t st;
	mbstate_t *stp = NULL;
	size_t sz, ret, i;

	FUNC3(FUNC9(LC_ALL, "C"), "C");
#ifdef __NetBSD__
	ATF_REQUIRE(setlocale(LC_CTYPE, t->locale) != NULL);
#else
	if (FUNC9(LC_CTYPE, t->locale) == NULL) {
		FUNC5(stderr, "Locale %s not found.\n", t->locale);
		return;
	}
#endif

	(void)FUNC10(buf, t->data, VIS_WHITE | VIS_OCTAL);
	(void)FUNC8("Checking sequence: \"%s\"\n", buf);

	FUNC0((str = FUNC9(LC_ALL, NULL)) != NULL);
	(void)FUNC8("Using locale: %s\n", str);

	if (tc == TC_WCRTOMB_ST) {
		(void)FUNC7(&st, 0, sizeof(st));
		stp = &st;
	}

	wcs[t->wclen] = L'X'; /* poison */
	pcs = t->data;
	sz = FUNC6(wcs, &pcs, t->wclen + 2, NULL);
	FUNC2(sz, t->wclen, "mbsrtowcs() returned: "
		"%zu, expected: %zu", sz, t->wclen);
	FUNC1(wcs[t->wclen], 0);

	for (i = 0; i < t->wclen + 1; i++) {
		if (tc == TC_WCTOMB)
			ret = FUNC12(cs, wcs[i]);
		else
			ret = FUNC11(cs, wcs[i], stp);

		if (ret == t->mblen[i])
			continue;

		(void)FUNC8("At position %zd:\n", i);
		(void)FUNC8("  expected: %zd\n", t->mblen[i]);
		(void)FUNC8("  got     : %zd\n", ret);
		FUNC4("Test failed");
		/* NOTREACHED */
	}

	(void)FUNC8("Ok.\n");
}