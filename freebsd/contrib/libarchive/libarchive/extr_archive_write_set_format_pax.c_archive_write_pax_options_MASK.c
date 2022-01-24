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
struct pax {int opt_binary; int /*<<< orphan*/ * sconv_utf8; } ;
struct archive_write {int /*<<< orphan*/  archive; scalar_t__ format_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FAILED ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static int
FUNC3(struct archive_write *a, const char *key,
    const char *val)
{
	struct pax *pax = (struct pax *)a->format_data;
	int ret = ARCHIVE_FAILED;

	if (FUNC2(key, "hdrcharset")  == 0) {
		/*
		 * The character-set we can use are defined in
		 * IEEE Std 1003.1-2001
		 */
		if (val == NULL || val[0] == 0)
			FUNC0(&a->archive, ARCHIVE_ERRNO_MISC,
			    "pax: hdrcharset option needs a character-set name");
		else if (FUNC2(val, "BINARY") == 0 ||
		    FUNC2(val, "binary") == 0) {
			/*
			 * Specify binary mode. We will not convert
			 * filenames, uname and gname to any charsets.
			 */
			pax->opt_binary = 1;
			ret = ARCHIVE_OK;
		} else if (FUNC2(val, "UTF-8") == 0) {
			/*
			 * Specify UTF-8 character-set to be used for
			 * filenames. This is almost the test that
			 * running platform supports the string conversion.
			 * Especially libarchive_test needs this trick for
			 * its test.
			 */
			pax->sconv_utf8 = FUNC1(
			    &(a->archive), "UTF-8", 0);
			if (pax->sconv_utf8 == NULL)
				ret = ARCHIVE_FATAL;
			else
				ret = ARCHIVE_OK;
		} else
			FUNC0(&a->archive, ARCHIVE_ERRNO_MISC,
			    "pax: invalid charset name");
		return (ret);
	}

	/* Note: The "warn" return is just to inform the options
	 * supervisor that we didn't handle it.  It will generate
	 * a suitable error if no one used this option. */
	return (ARCHIVE_WARN);
}