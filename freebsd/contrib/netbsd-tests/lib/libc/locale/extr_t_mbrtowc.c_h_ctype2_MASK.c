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
typedef  int /*<<< orphan*/  wbuf ;
struct test {char* locale; char* data; int* wchars; int* widths; int /*<<< orphan*/  length; } ;
typedef  int /*<<< orphan*/  st ;
typedef  int mbstate_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/ * EILSEQ ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int SIZE ; 
 int VIS_OCTAL ; 
 int VIS_WHITE ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char const* errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 size_t FUNC6 (int*,char const*,size_t,int*) ; 
 scalar_t__ FUNC7 (int*) ; 
 size_t FUNC8 (int*,char const**,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 char* FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC13(const struct test *t, bool use_mbstate)
{
	mbstate_t *stp;
	mbstate_t st;
	char buf[SIZE];
	char *str;
	size_t n;

	FUNC3(FUNC11(LC_ALL, "C"), "C");
#ifdef __NetBSD__
	ATF_REQUIRE(setlocale(LC_CTYPE, t->locale) != NULL);
#else
	if (FUNC11(LC_CTYPE, t->locale) == NULL) {
		FUNC5(stderr, "Locale %s not found.\n", t->locale);
		return;
	}
#endif

	(void)FUNC12(buf, t->data, VIS_WHITE | VIS_OCTAL);
	(void)FUNC10("Checking string: \"%s\"\n", buf);

	FUNC0((str = FUNC11(LC_ALL, NULL)) != NULL);
	(void)FUNC10("Using locale: %s\n", str);

	(void)FUNC10("Using mbstate: %s\n", use_mbstate ? "yes" : "no");

	(void)FUNC9(&st, 0, sizeof(st));
//	mbrtowc(0, 0, 0, &st); /* XXX for ISO2022-JP */
	stp = use_mbstate ? &st : 0;

	for (n = 9; n > 0; n--) {
		const char *src = t->data;
		wchar_t dst;
		size_t nchar = 0;
		int width = 0;

		FUNC0(FUNC7(stp) != 0);

		for (;;) {
			size_t rv = FUNC6(&dst, src, n, stp);

			if (rv == 0)
				break;

			if (rv == (size_t)-2) {
				src += n;
				width += n;

				continue;
			}
			if (rv == (size_t)-1) {
				FUNC1(errno, EILSEQ);
				FUNC4("Invalid sequence");
				/* NOTREACHED */
			}

			width += rv;
			src += rv;

			if (dst != t->wchars[nchar] ||
			    width != t->widths[nchar]) {
				(void)FUNC10("At position %zd:\n", nchar);
				(void)FUNC10("  expected: 0x%04X (%u)\n",
					t->wchars[nchar], t->widths[nchar]);
				(void)FUNC10("  got     : 0x%04X (%u)\n",
					dst, width);
				FUNC4("Test failed");
			}

			nchar++;
			width = 0;
		}

		FUNC2(dst, 0, "Incorrect terminating character: "
			"0x%04X (expected: 0x00)", dst);

		FUNC2(nchar, t->length, "Incorrect length: "
			"%zd (expected: %zd)", nchar, t->length);
	}

	{
		wchar_t wbuf[SIZE];
		size_t rv;
		char const *src = t->data;
		int i;

		(void)FUNC9(wbuf, 0xFF, sizeof(wbuf));

		rv = FUNC8(wbuf, &src, SIZE, stp);

		FUNC2(rv, t->length, "Incorrect length: %zd "
			"(expected: %zd)", rv, t->length);
		FUNC1(src, NULL);

		for (i = 0; wbuf[i] != 0; ++i) {
			if (wbuf[i] == t->wchars[i])
				continue;

			(void)FUNC10("At position %d:\n", i);
			(void)FUNC10("  expected: 0x%04X\n", t->wchars[i]);
			(void)FUNC10("  got     : 0x%04X\n", wbuf[i]);
			FUNC4("Test failed");
		}

		FUNC2((size_t)i, t->length, "Incorrect length: "
			"%d (expected: %zd)", i, t->length);
	}

	(void)FUNC10("Ok.\n");
}