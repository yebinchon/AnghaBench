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
struct archive_string_conv {scalar_t__ nconverter; } ;
struct archive {unsigned int current_codepage; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int /*<<< orphan*/  ENOMEM ; 
 int SCONV_TO_CHARSET ; 
 int /*<<< orphan*/  FUNC0 (struct archive*,struct archive_string_conv*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 struct archive_string_conv* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 
 struct archive_string_conv* FUNC4 (struct archive*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_string_conv*) ; 
 unsigned int FUNC6 () ; 

__attribute__((used)) static struct archive_string_conv *
FUNC7(struct archive *a, const char *fc, const char *tc, int flag)
{
	struct archive_string_conv *sc;
	unsigned current_codepage;

	/* Check if we have made the sconv object. */
	sc = FUNC4(a, fc, tc);
	if (sc != NULL)
		return (sc);

	if (a == NULL)
		current_codepage = FUNC6();
	else
		current_codepage = a->current_codepage;

	sc = FUNC3(FUNC2(fc),
	    FUNC2(tc), current_codepage, flag);
	if (sc == NULL) {
		if (a != NULL)
			FUNC1(a, ENOMEM,
			    "Could not allocate memory for "
			    "a string conversion object");
		return (NULL);
	}

	/*
	 * If there is no converter for current string conversion object,
	 * we cannot handle this conversion.
	 */
	if (sc->nconverter == 0) {
		if (a != NULL) {
#if HAVE_ICONV
			archive_set_error(a, ARCHIVE_ERRNO_MISC,
			    "iconv_open failed : Cannot handle ``%s''",
			    (flag & SCONV_TO_CHARSET)?tc:fc);
#else
			FUNC1(a, ARCHIVE_ERRNO_MISC,
			    "A character-set conversion not fully supported "
			    "on this platform");
#endif
		}
		/* Failed; free a sconv object. */
		FUNC5(sc);
		return (NULL);
	}

	/*
	 * Success!
	 */
	if (a != NULL)
		FUNC0(a, sc);
	return (sc);
}