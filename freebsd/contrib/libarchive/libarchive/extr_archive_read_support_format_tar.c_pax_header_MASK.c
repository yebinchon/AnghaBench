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
struct archive_string {char* s; size_t length; } ;
struct tar {struct archive_string entry_uname; struct archive_string entry_pathname; struct archive_string entry_pathname_override; struct archive_string entry_linkpath; struct archive_string entry_gname; scalar_t__ compat_2x; struct archive_string_conv* opt_sconv; scalar_t__ pax_hdrcharset_binary; } ;
struct archive_string_conv {int dummy; } ;
struct archive_read {int /*<<< orphan*/  archive; } ;
struct archive_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 int /*<<< orphan*/  SCONV_SET_OPT_UTF8_LIBARCHIVE2X ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*,char*) ; 
 scalar_t__ FUNC1 (struct archive_entry*,char*,int /*<<< orphan*/ ,struct archive_string_conv*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*,char*) ; 
 scalar_t__ FUNC3 (struct archive_entry*,char*,int /*<<< orphan*/ ,struct archive_string_conv*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*,char*) ; 
 scalar_t__ FUNC5 (struct archive_entry*,char*,int /*<<< orphan*/ ,struct archive_string_conv*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*,char*) ; 
 scalar_t__ FUNC7 (struct archive_entry*,char*,int /*<<< orphan*/ ,struct archive_string_conv*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct archive_string_conv* FUNC9 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct archive_string_conv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC12 (struct archive_string*) ; 
 int FUNC13 (int,int) ; 
 int FUNC14 (struct archive_read*,struct tar*,struct archive_entry*,char*,char*,size_t) ; 
 int FUNC15 (struct archive_read*,struct archive_string_conv*,char*) ; 

__attribute__((used)) static int
FUNC16(struct archive_read *a, struct tar *tar,
    struct archive_entry *entry, struct archive_string *in_as)
{
	size_t attr_length, l, line_length, value_length;
	char *p;
	char *key, *value;
	struct archive_string *as;
	struct archive_string_conv *sconv;
	int err, err2;
	char *attr = in_as->s;

	attr_length = in_as->length;
	tar->pax_hdrcharset_binary = 0;
	FUNC11(&(tar->entry_gname));
	FUNC11(&(tar->entry_linkpath));
	FUNC11(&(tar->entry_pathname));
	FUNC11(&(tar->entry_pathname_override));
	FUNC11(&(tar->entry_uname));
	err = ARCHIVE_OK;
	while (attr_length > 0) {
		/* Parse decimal length field at start of line. */
		line_length = 0;
		l = attr_length;
		p = attr; /* Record start of line. */
		while (l>0) {
			if (*p == ' ') {
				p++;
				l--;
				break;
			}
			if (*p < '0' || *p > '9') {
				FUNC8(&a->archive, ARCHIVE_ERRNO_MISC,
				    "Ignoring malformed pax extended attributes");
				return (ARCHIVE_WARN);
			}
			line_length *= 10;
			line_length += *p - '0';
			if (line_length > 999999) {
				FUNC8(&a->archive, ARCHIVE_ERRNO_MISC,
				    "Rejecting pax extended attribute > 1MB");
				return (ARCHIVE_WARN);
			}
			p++;
			l--;
		}

		/*
		 * Parsed length must be no bigger than available data,
		 * at least 1, and the last character of the line must
		 * be '\n'.
		 */
		if (line_length > attr_length
		    || line_length < 1
		    || attr[line_length - 1] != '\n')
		{
			FUNC8(&a->archive, ARCHIVE_ERRNO_MISC,
			    "Ignoring malformed pax extended attribute");
			return (ARCHIVE_WARN);
		}

		/* Null-terminate the line. */
		attr[line_length - 1] = '\0';

		/* Find end of key and null terminate it. */
		key = p;
		if (key[0] == '=')
			return (-1);
		while (*p && *p != '=')
			++p;
		if (*p == '\0') {
			FUNC8(&a->archive, ARCHIVE_ERRNO_MISC,
			    "Invalid pax extended attributes");
			return (ARCHIVE_WARN);
		}
		*p = '\0';

		value = p + 1;

		/* Some values may be binary data */
		value_length = attr + line_length - 1 - value;

		/* Identify this attribute and set it in the entry. */
		err2 = FUNC14(a, tar, entry, key, value, value_length);
		if (err2 == ARCHIVE_FATAL)
			return (err2);
		err = FUNC13(err, err2);

		/* Skip to next line */
		attr += line_length;
		attr_length -= line_length;
	}

	/*
	 * PAX format uses UTF-8 as default charset for its metadata
	 * unless hdrcharset=BINARY is present in its header.
	 * We apply the charset specified by the hdrcharset option only
	 * when the hdrcharset attribute(in PAX header) is BINARY because
	 * we respect the charset described in PAX header and BINARY also
	 * means that metadata(filename,uname and gname) character-set
	 * is unknown.
	 */
	if (tar->pax_hdrcharset_binary)
		sconv = tar->opt_sconv;
	else {
		sconv = FUNC9(
		    &(a->archive), "UTF-8", 1);
		if (sconv == NULL)
			return (ARCHIVE_FATAL);
		if (tar->compat_2x)
			FUNC10(sconv,
			    SCONV_SET_OPT_UTF8_LIBARCHIVE2X);
	}

	if (FUNC12(&(tar->entry_gname)) > 0) {
		if (FUNC1(entry, tar->entry_gname.s,
		    FUNC12(&(tar->entry_gname)), sconv) != 0) {
			err = FUNC15(a, sconv, "Gname");
			if (err == ARCHIVE_FATAL)
				return (err);
			/* Use a converted an original name. */
			FUNC0(entry, tar->entry_gname.s);
		}
	}
	if (FUNC12(&(tar->entry_linkpath)) > 0) {
		if (FUNC3(entry, tar->entry_linkpath.s,
		    FUNC12(&(tar->entry_linkpath)), sconv) != 0) {
			err = FUNC15(a, sconv, "Linkname");
			if (err == ARCHIVE_FATAL)
				return (err);
			/* Use a converted an original name. */
			FUNC2(entry, tar->entry_linkpath.s);
		}
	}
	/*
	 * Some extensions (such as the GNU sparse file extensions)
	 * deliberately store a synthetic name under the regular 'path'
	 * attribute and the real file name under a different attribute.
	 * Since we're supposed to not care about the order, we
	 * have no choice but to store all of the various filenames
	 * we find and figure it all out afterwards.  This is the
	 * figuring out part.
	 */
	as = NULL;
	if (FUNC12(&(tar->entry_pathname_override)) > 0)
		as = &(tar->entry_pathname_override);
	else if (FUNC12(&(tar->entry_pathname)) > 0)
		as = &(tar->entry_pathname);
	if (as != NULL) {
		if (FUNC5(entry, as->s,
		    FUNC12(as), sconv) != 0) {
			err = FUNC15(a, sconv, "Pathname");
			if (err == ARCHIVE_FATAL)
				return (err);
			/* Use a converted an original name. */
			FUNC4(entry, as->s);
		}
	}
	if (FUNC12(&(tar->entry_uname)) > 0) {
		if (FUNC7(entry, tar->entry_uname.s,
		    FUNC12(&(tar->entry_uname)), sconv) != 0) {
			err = FUNC15(a, sconv, "Uname");
			if (err == ARCHIVE_FATAL)
				return (err);
			/* Use a converted an original name. */
			FUNC6(entry, tar->entry_uname.s);
		}
	}
	return (err);
}