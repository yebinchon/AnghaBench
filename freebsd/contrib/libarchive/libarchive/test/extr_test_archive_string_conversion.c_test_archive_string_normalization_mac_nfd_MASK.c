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
typedef  int /*<<< orphan*/  wchar_t ;
struct archive_string_conv {int dummy; } ;
struct archive_string {char const* s; } ;
struct archive_mstring {int dummy; } ;
struct archive {int dummy; } ;
typedef  int /*<<< orphan*/  nfd ;
typedef  int /*<<< orphan*/  nfc ;
typedef  int /*<<< orphan*/  mstr ;
typedef  int /*<<< orphan*/  buff ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_OK ; 
 int /*<<< orphan*/  LC_ALL ; 
 int SCONV_SET_OPT_NORMALIZATION_D ; 
 int /*<<< orphan*/  FUNC0 (struct archive_mstring*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_mstring*,char*,int,struct archive_string_conv*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_mstring*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_mstring*,char const**,size_t*,struct archive_string_conv*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*,struct archive_mstring*,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 
 struct archive* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct archive_string*,char*,struct archive_string_conv*) ; 
 struct archive_string_conv* FUNC8 (struct archive*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_string_conv*,int) ; 
 struct archive_string_conv* FUNC10 (struct archive*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC12 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC13 (struct archive_string*,char*,int,struct archive_string_conv*) ; 
 int /*<<< orphan*/  FUNC14 (struct archive*) ; 
 struct archive* FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC23 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC24 (char const*,char*) ; 
 int FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (struct archive_mstring*,int /*<<< orphan*/ ,int) ; 
 int FUNC27 (char*,int /*<<< orphan*/ *,char*,char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC28 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC29 (char*) ; 
 char* FUNC30 (char*,char) ; 
 int /*<<< orphan*/  FUNC31 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC32(const char *testdata)
{
	struct archive *a, *a2;
	struct archive_string utf8;
	struct archive_mstring mstr;
	struct archive_string_conv *f_sconv8, *t_sconv8;
	struct archive_string_conv *f_sconv16be, *f_sconv16le;
	FILE *fp;
	char buff[512];
	int line = 0;
	int locale_is_utf8, wc_is_unicode;
	int sconv_opt = SCONV_SET_OPT_NORMALIZATION_D;

	locale_is_utf8 = (NULL != FUNC28(LC_ALL, "en_US.UTF-8"));
	wc_is_unicode = FUNC25();
	/* If it doesn't exist, just warn and return. */
	if (!locale_is_utf8 && !wc_is_unicode) {
		FUNC29("A test of string normalization for NFD requires "
		    "a suitable locale; en_US.UTF-8 not available on this "
		    "system");
		return;
	}

	FUNC12(&utf8);
	FUNC26(&mstr, 0, sizeof(mstr));

	/*
	 * Create string conversion objects.
	 */
	FUNC16((a = FUNC6()) != NULL);
	FUNC17(NULL != (f_sconv8 =
	    FUNC8(a, "UTF-8", 0)));
	FUNC17(NULL != (f_sconv16be =
	    FUNC8(a, "UTF-16BE", 0)));
	FUNC17(NULL != (f_sconv16le =
	    FUNC8(a, "UTF-16LE", 0)));
	FUNC16((a2 = FUNC15()) != NULL);
	FUNC17(NULL != (t_sconv8 =
	    FUNC10(a2, "UTF-8", 0)));
	if (f_sconv8 == NULL || f_sconv16be == NULL || f_sconv16le == NULL ||
	    t_sconv8 == NULL) {
		/* We cannot continue this test. */
		FUNC18(ARCHIVE_OK, FUNC5(a));
		return;
	}
	FUNC9(f_sconv8, sconv_opt);
	FUNC9(f_sconv16be, sconv_opt);
	FUNC9(f_sconv16le, sconv_opt);
	FUNC9(t_sconv8, sconv_opt);

	/* Open a test pattern file. */
	FUNC16((fp = FUNC24(testdata, "r")) != NULL);

	/*
	 * Read test data.
	 *  Test data format:
	 *     <NFC Unicode pattern> ';' <NFD Unicode pattern> '\n'
	 *  Unicode pattern format:
	 *     [0-9A-F]{4,5}([ ][0-9A-F]{4,5}){0,}
	 */
	while (FUNC23(buff, sizeof(buff), fp) != NULL) {
		char nfc[80], nfd[80];
		char utf8_nfc[80], utf8_nfd[80];
		char utf16be_nfc[80], utf16be_nfd[80];
		char utf16le_nfc[80], utf16le_nfd[80];
		wchar_t wc_nfc[40], wc_nfd[40];
		char *e, *p;
		const wchar_t *wp;
		const char *mp;
		size_t mplen;
		int should_be_nfc;

		line++;
		if (buff[0] == '#')
			continue;
		p = FUNC30(buff, ';');
		if (p == NULL)
			continue;
		*p++ = '\0';
		/* Copy an NFC pattern */
		FUNC31(nfc, buff, sizeof(nfc)-1);
		nfc[sizeof(nfc)-1] = '\0';
		e = p;
		p = FUNC30(p, '\n');
		if (p == NULL)
			continue;
		*p = '\0';
		/* Copy an NFD pattern */
		FUNC31(nfd, e, sizeof(nfd)-1);
		nfd[sizeof(nfd)-1] = '\0';

		/*
		 * Get an NFC patterns.
		 */
		should_be_nfc = FUNC27(utf8_nfc, wc_nfc,
			utf16be_nfc, utf16le_nfc, nfc, 1);

		/*
		 * Get an NFD patterns.
		 */
		FUNC27(utf8_nfd, wc_nfd, utf16be_nfd, utf16le_nfd,
		    nfd, 0);

		if (locale_is_utf8) {
			/*
			 * Normalize an NFC string for import.
			 */
			FUNC18(0, FUNC7(
			    &utf8, utf8_nfc, f_sconv8));
			if (should_be_nfc) {
				FUNC21("NFC(%s) should not be converted to"
				    " NFD(%s):%d", nfc, nfd, line);
				FUNC19(utf8_nfc, utf8.s);
			} else {
				FUNC21("NFC(%s) should be converted to"
				    " NFD(%s):%d", nfc, nfd, line);
				FUNC19(utf8_nfd, utf8.s);
			}

			/*
			 * Normalize an NFD string for import.
			 */
			FUNC18(0, FUNC7(
			    &utf8, utf8_nfd, f_sconv8));
			FUNC21("NFD(%s) should not be any changed:%d",
			    nfd, line);
			FUNC19(utf8_nfd, utf8.s);

			/*
			 * Copy an NFD string for export.
			 */
			FUNC18(0, FUNC7(
			    &utf8, utf8_nfd, t_sconv8));
			FUNC21("NFD(%s) should not be any changed:%d",
			    nfd, line);
			FUNC19(utf8_nfd, utf8.s);

			/*
			 * Normalize an NFC string in UTF-16BE for import.
			 */
			FUNC18(0, FUNC13(
			    &utf8, utf16be_nfc, 100000, f_sconv16be));
			if (should_be_nfc) {
				FUNC21("NFC(%s) should not be converted to"
				    " NFD(%s):%d", nfc, nfd, line);
				FUNC19(utf8_nfc, utf8.s);
			} else {
				FUNC21("NFC(%s) should be converted to"
				    " NFD(%s):%d", nfc, nfd, line);
				FUNC19(utf8_nfd, utf8.s);
			}

			/*
			 * Normalize an NFC string in UTF-16LE for import.
			 */
			FUNC18(0, FUNC13(
			    &utf8, utf16le_nfc, 100000, f_sconv16le));
			if (should_be_nfc) {
				FUNC21("NFC(%s) should not be converted to"
				    " NFD(%s):%d", nfc, nfd, line);
				FUNC19(utf8_nfc, utf8.s);
			} else {
				FUNC21("NFC(%s) should be converted to"
				    " NFD(%s):%d", nfc, nfd, line);
				FUNC19(utf8_nfd, utf8.s);
			}
		}

		/*
		 * Test for archive_mstring interface.
		 * In specific, Windows platform UTF-16BE is directly
		 * converted to/from wide-character to avoid the effect of
		 * current locale since windows platform cannot make
		 * locale UTF-8.
		 */
		if (locale_is_utf8 || wc_is_unicode) {
			/*
			 * Normalize an NFD string in UTF-8 for import.
			 */
			FUNC18(0, FUNC1(
			    &mstr, utf8_nfc, 100000, f_sconv8));
			FUNC18(0,
			    FUNC4(a, &mstr, &wp));
			if (should_be_nfc) {
				FUNC21("UTF-8 NFC(%s) should not be converted "
				    "to WCS NFD(%s):%d", nfc, nfd, line);
				FUNC20(wc_nfc, wp);
			} else {
				FUNC21("UTF-8 NFC(%s) should be converted "
				    "to WCS NFD(%s):%d", nfc, nfd, line);
				FUNC20(wc_nfd, wp);
			}

			/*
			 * Normalize an NFD string in UTF-16BE for import.
			 */
			FUNC18(0, FUNC1(
			    &mstr, utf16be_nfc, 100000, f_sconv16be));
			FUNC18(0,
			    FUNC4(a, &mstr, &wp));
			if (should_be_nfc) {
				FUNC21("UTF-16BE NFC(%s) should not be "
				    "converted to WCS NFD(%s):%d",
				    nfc, nfd, line);
				FUNC20(wc_nfc, wp);
			} else {
				FUNC21("UTF-16BE NFC(%s) should be converted "
				    "to WCS NFD(%s):%d", nfc, nfd, line);
				FUNC20(wc_nfd, wp);
			}

			/*
			 * Normalize an NFD string in UTF-16LE for import.
			 */
			FUNC18(0, FUNC1(
			    &mstr, utf16le_nfc, 100000, f_sconv16le));
			FUNC18(0,
			    FUNC4(a, &mstr, &wp));
			if (should_be_nfc) {
				FUNC21("UTF-16LE NFC(%s) should not be "
				    "converted to WCS NFD(%s):%d",
				    nfc, nfd, line);
				FUNC20(wc_nfc, wp);
			} else {
				FUNC21("UTF-16LE NFC(%s) should be converted "
				    "to WCS NFD(%s):%d", nfc, nfd, line);
				FUNC20(wc_nfd, wp);
			}

			/*
			 * Copy an NFD wide-string for export.
			 */
			FUNC18(0, FUNC2(
			    &mstr, wc_nfd));
			FUNC18(0, FUNC3(
			    &mstr, &mp, &mplen, t_sconv8));
			FUNC21("WCS NFD(%s) should be UTF-8 NFD:%d"
			    ,nfd, line);
			FUNC19(utf8_nfd, mp);
		}
	}

	FUNC11(&utf8);
	FUNC0(&mstr);
	FUNC22(fp);
	FUNC18(ARCHIVE_OK, FUNC5(a));
	FUNC18(ARCHIVE_OK, FUNC14(a2));
}