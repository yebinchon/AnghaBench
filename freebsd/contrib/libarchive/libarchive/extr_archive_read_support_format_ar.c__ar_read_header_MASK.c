#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_2__ {scalar_t__ archive_format; char* archive_format_name; } ;
struct archive_read {TYPE_1__ archive; } ;
struct archive_entry {int dummy; } ;
struct ar {char* strtab; size_t strtab_size; scalar_t__ entry_bytes_remaining; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  AE_IFREG ; 
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FATAL ; 
 scalar_t__ ARCHIVE_FORMAT_AR ; 
 scalar_t__ ARCHIVE_FORMAT_AR_BSD ; 
 scalar_t__ ARCHIVE_FORMAT_AR_GNU ; 
 int ARCHIVE_OK ; 
 int AR_fmag_offset ; 
 int AR_name_offset ; 
 int AR_name_size ; 
 int AR_size_offset ; 
 int AR_size_size ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int SIZE_MAX ; 
 void* FUNC0 (struct archive_read*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_read*,size_t) ; 
 int FUNC2 (char const*,int) ; 
 int FUNC3 (struct ar*,struct archive_entry*,char const*) ; 
 int FUNC4 (struct archive_read*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (size_t) ; 
 int /*<<< orphan*/  FUNC11 (char*,void const*,size_t) ; 
 int /*<<< orphan*/ * FUNC12 (char*,char) ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 scalar_t__ FUNC14 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,void const*,size_t) ; 

__attribute__((used)) static int
FUNC16(struct archive_read *a, struct archive_entry *entry,
	struct ar *ar, const char *h, size_t *unconsumed)
{
	char filename[AR_name_size + 1];
	uint64_t number; /* Used to hold parsed numbers before validation. */
	size_t bsd_name_length, entry_size;
	char *p, *st;
	const void *b;
	int r;

	/* Verify the magic signature on the file header. */
	if (FUNC14(h + AR_fmag_offset, "`\n", 2) != 0) {
		FUNC8(&a->archive, EINVAL,
		    "Incorrect file header signature");
		return (ARCHIVE_FATAL);
	}

	/* Copy filename into work buffer. */
	FUNC15(filename, h + AR_name_offset, AR_name_size);
	filename[AR_name_size] = '\0';

	/*
	 * Guess the format variant based on the filename.
	 */
	if (a->archive.archive_format == ARCHIVE_FORMAT_AR) {
		/* We don't already know the variant, so let's guess. */
		/*
		 * Biggest clue is presence of '/': GNU starts special
		 * filenames with '/', appends '/' as terminator to
		 * non-special names, so anything with '/' should be
		 * GNU except for BSD long filenames.
		 */
		if (FUNC14(filename, "#1/", 3) == 0)
			a->archive.archive_format = ARCHIVE_FORMAT_AR_BSD;
		else if (FUNC12(filename, '/') != NULL)
			a->archive.archive_format = ARCHIVE_FORMAT_AR_GNU;
		else if (FUNC14(filename, "__.SYMDEF", 9) == 0)
			a->archive.archive_format = ARCHIVE_FORMAT_AR_BSD;
		/*
		 * XXX Do GNU/SVR4 'ar' programs ever omit trailing '/'
		 * if name exactly fills 16-byte field?  If so, we
		 * can't assume entries without '/' are BSD. XXX
		 */
	}

	/* Update format name from the code. */
	if (a->archive.archive_format == ARCHIVE_FORMAT_AR_GNU)
		a->archive.archive_format_name = "ar (GNU/SVR4)";
	else if (a->archive.archive_format == ARCHIVE_FORMAT_AR_BSD)
		a->archive.archive_format_name = "ar (BSD)";
	else
		a->archive.archive_format_name = "ar";

	/*
	 * Remove trailing spaces from the filename.  GNU and BSD
	 * variants both pad filename area out with spaces.
	 * This will only be wrong if GNU/SVR4 'ar' implementations
	 * omit trailing '/' for 16-char filenames and we have
	 * a 16-char filename that ends in ' '.
	 */
	p = filename + AR_name_size - 1;
	while (p >= filename && *p == ' ') {
		*p = '\0';
		p--;
	}

	/*
	 * Remove trailing slash unless first character is '/'.
	 * (BSD entries never end in '/', so this will only trim
	 * GNU-format entries.  GNU special entries start with '/'
	 * and are not terminated in '/', so we don't trim anything
	 * that starts with '/'.)
	 */
	if (filename[0] != '/' && p > filename && *p == '/') {
		*p = '\0';
	}

	if (p < filename) {
		FUNC8(&a->archive, ARCHIVE_ERRNO_MISC,
		    "Found entry with empty filename");
		return (ARCHIVE_FATAL);
	}

	/*
	 * '//' is the GNU filename table.
	 * Later entries can refer to names in this table.
	 */
	if (FUNC13(filename, "//") == 0) {
		/* This must come before any call to _read_ahead. */
		FUNC3(ar, entry, h);
		FUNC5(entry, filename);
		FUNC6(entry, AE_IFREG);
		/* Get the size of the filename table. */
		number = FUNC2(h + AR_size_offset, AR_size_size);
		if (number > SIZE_MAX || number > 1024 * 1024 * 1024) {
			FUNC8(&a->archive, ARCHIVE_ERRNO_MISC,
			    "Filename table too large");
			return (ARCHIVE_FATAL);
		}
		entry_size = (size_t)number;
		if (entry_size == 0) {
			FUNC8(&a->archive, EINVAL,
			    "Invalid string table");
			return (ARCHIVE_FATAL);
		}
		if (ar->strtab != NULL) {
			FUNC8(&a->archive, EINVAL,
			    "More than one string tables exist");
			return (ARCHIVE_FATAL);
		}

		/* Read the filename table into memory. */
		st = FUNC10(entry_size);
		if (st == NULL) {
			FUNC8(&a->archive, ENOMEM,
			    "Can't allocate filename table buffer");
			return (ARCHIVE_FATAL);
		}
		ar->strtab = st;
		ar->strtab_size = entry_size;

		if (*unconsumed) {
			FUNC1(a, *unconsumed);
			*unconsumed = 0;
		}

		if ((b = FUNC0(a, entry_size, NULL)) == NULL)
			return (ARCHIVE_FATAL);
		FUNC11(st, b, entry_size);
		FUNC1(a, entry_size);
		/* All contents are consumed. */
		ar->entry_bytes_remaining = 0;
		FUNC7(entry, ar->entry_bytes_remaining);

		/* Parse the filename table. */
		return (FUNC4(a));
	}

	/*
	 * GNU variant handles long filenames by storing /<number>
	 * to indicate a name stored in the filename table.
	 * XXX TODO: Verify that it's all digits... Don't be fooled
	 * by "/9xyz" XXX
	 */
	if (filename[0] == '/' && filename[1] >= '0' && filename[1] <= '9') {
		number = FUNC2(h + AR_name_offset + 1, AR_name_size - 1);
		/*
		 * If we can't look up the real name, warn and return
		 * the entry with the wrong name.
		 */
		if (ar->strtab == NULL || number >= ar->strtab_size) {
			FUNC8(&a->archive, EINVAL,
			    "Can't find long filename for GNU/SVR4 archive entry");
			FUNC5(entry, filename);
			/* Parse the time, owner, mode, size fields. */
			FUNC3(ar, entry, h);
			return (ARCHIVE_FATAL);
		}

		FUNC5(entry, &ar->strtab[(size_t)number]);
		/* Parse the time, owner, mode, size fields. */
		return (FUNC3(ar, entry, h));
	}

	/*
	 * BSD handles long filenames by storing "#1/" followed by the
	 * length of filename as a decimal number, then prepends the
	 * the filename to the file contents.
	 */
	if (FUNC14(filename, "#1/", 3) == 0) {
		/* Parse the time, owner, mode, size fields. */
		/* This must occur before _read_ahead is called again. */
		FUNC3(ar, entry, h);

		/* Parse the size of the name, adjust the file size. */
		number = FUNC2(h + AR_name_offset + 3, AR_name_size - 3);
		/* Sanity check the filename length:
		 *   = Must be <= SIZE_MAX - 1
		 *   = Must be <= 1MB
		 *   = Cannot be bigger than the entire entry
		 */
		if (number > SIZE_MAX - 1
		    || number > 1024 * 1024
		    || (int64_t)number > ar->entry_bytes_remaining) {
			FUNC8(&a->archive, ARCHIVE_ERRNO_MISC,
			    "Bad input file size");
			return (ARCHIVE_FATAL);
		}
		bsd_name_length = (size_t)number;
		ar->entry_bytes_remaining -= bsd_name_length;
		/* Adjust file size reported to client. */
		FUNC7(entry, ar->entry_bytes_remaining);

		if (*unconsumed) {
			FUNC1(a, *unconsumed);
			*unconsumed = 0;
		}

		/* Read the long name into memory. */
		if ((b = FUNC0(a, bsd_name_length, NULL)) == NULL) {
			FUNC8(&a->archive, ARCHIVE_ERRNO_MISC,
			    "Truncated input file");
			return (ARCHIVE_FATAL);
		}
		/* Store it in the entry. */
		p = (char *)FUNC10(bsd_name_length + 1);
		if (p == NULL) {
			FUNC8(&a->archive, ENOMEM,
			    "Can't allocate fname buffer");
			return (ARCHIVE_FATAL);
		}
		FUNC15(p, b, bsd_name_length);
		p[bsd_name_length] = '\0';

		FUNC1(a, bsd_name_length);

		FUNC5(entry, p);
		FUNC9(p);
		return (ARCHIVE_OK);
	}

	/*
	 * "/" is the SVR4/GNU archive symbol table.
	 * "/SYM64/" is the SVR4/GNU 64-bit variant archive symbol table.
	 */
	if (FUNC13(filename, "/") == 0 || FUNC13(filename, "/SYM64/") == 0) {
		FUNC5(entry, filename);
		/* Parse the time, owner, mode, size fields. */
		r = FUNC3(ar, entry, h);
		/* Force the file type to a regular file. */
		FUNC6(entry, AE_IFREG);
		return (r);
	}

	/*
	 * "__.SYMDEF" is a BSD archive symbol table.
	 */
	if (FUNC13(filename, "__.SYMDEF") == 0) {
		FUNC5(entry, filename);
		/* Parse the time, owner, mode, size fields. */
		return (FUNC3(ar, entry, h));
	}

	/*
	 * Otherwise, this is a standard entry.  The filename
	 * has already been trimmed as much as possible, based
	 * on our current knowledge of the format.
	 */
	FUNC5(entry, filename);
	return (FUNC3(ar, entry, h));
}