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
struct gnutar {int init_default_conversion; char* pathname; int pathname_length; char* linkname; int linkname_length; int entry_padding; scalar_t__ entry_bytes_remaining; int /*<<< orphan*/  gname_length; int /*<<< orphan*/  gname; int /*<<< orphan*/  uname_length; int /*<<< orphan*/  uname; struct archive_string_conv* opt_sconv; struct archive_string_conv* sconv_default; } ;
struct archive_wstring {int /*<<< orphan*/  s; } ;
struct archive_write {int /*<<< orphan*/  archive; scalar_t__ format_data; } ;
struct archive_string_conv {int dummy; } ;
struct archive_string {int /*<<< orphan*/  s; } ;
struct archive_entry {int dummy; } ;
typedef  int ssize_t ;
typedef  int int64_t ;

/* Variables and functions */
#define  AE_IFBLK 134 
#define  AE_IFCHR 133 
#define  AE_IFDIR 132 
#define  AE_IFIFO 131 
#define  AE_IFLNK 130 
#define  AE_IFREG 129 
#define  AE_IFSOCK 128 
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int ARCHIVE_FAILED ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 scalar_t__ ENOMEM ; 
 int GNUTAR_linkname_size ; 
 int GNUTAR_name_size ; 
 int FUNC0 (struct archive_write*,int) ; 
 int FUNC1 (struct archive_write*,char const*,int) ; 
 struct archive_entry* FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*) ; 
 int FUNC8 (struct archive_entry*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct archive_string_conv*) ; 
 int /*<<< orphan*/ * FUNC9 (struct archive_entry*) ; 
 int FUNC10 (struct archive_entry*,char**,int*,struct archive_string_conv*) ; 
 scalar_t__ FUNC11 (struct archive_entry*) ; 
 struct archive_entry* FUNC12 (int /*<<< orphan*/ *) ; 
 char* FUNC13 (struct archive_entry*) ; 
 int FUNC14 (struct archive_entry*,char**,int*,struct archive_string_conv*) ; 
 int* FUNC15 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC16 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct archive_entry*,size_t) ; 
 int /*<<< orphan*/  FUNC19 (struct archive_entry*,char*) ; 
 scalar_t__ FUNC20 (struct archive_entry*) ; 
 int /*<<< orphan*/ * FUNC21 (struct archive_entry*) ; 
 int FUNC22 (struct archive_entry*,char**,int*,struct archive_string_conv*) ; 
 int /*<<< orphan*/  FUNC23 (struct archive_entry*) ; 
 int FUNC24 (struct archive_entry*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct archive_string_conv*) ; 
 int FUNC25 (struct archive_write*,char*,struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC27 (struct archive_wstring*,char) ; 
 int /*<<< orphan*/  FUNC28 (struct archive_string_conv*) ; 
 struct archive_string_conv* FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC30 (struct archive_wstring*,size_t) ; 
 int /*<<< orphan*/  FUNC31 (struct archive_wstring*) ; 
 int /*<<< orphan*/  FUNC32 (struct archive_wstring*) ; 
 int /*<<< orphan*/  FUNC33 (struct archive_wstring*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC34 (struct archive_wstring*,int) ; 
 int /*<<< orphan*/ * FUNC35 (struct archive_wstring*,size_t) ; 
 int /*<<< orphan*/  FUNC36 (struct archive_wstring*) ; 
 int /*<<< orphan*/  FUNC37 (struct archive_wstring*,int const*,size_t) ; 
 scalar_t__ errno ; 
 int FUNC38 (char const*) ; 
 int FUNC39 (int const*) ; 

__attribute__((used)) static int
FUNC40(struct archive_write *a,
     struct archive_entry *entry)
{
	char buff[512];
	int r, ret, ret2 = ARCHIVE_OK;
	int tartype;
	struct gnutar *gnutar;
	struct archive_string_conv *sconv;
	struct archive_entry *entry_main;

	gnutar = (struct gnutar *)a->format_data;

	/* Setup default string conversion. */
	if (gnutar->opt_sconv == NULL) {
		if (!gnutar->init_default_conversion) {
			gnutar->sconv_default =
			    FUNC29(
				&(a->archive));
			gnutar->init_default_conversion = 1;
		}
		sconv = gnutar->sconv_default;
	} else
		sconv = gnutar->opt_sconv;

	/* Only regular files (not hardlinks) have data. */
	if (FUNC9(entry) != NULL ||
	    FUNC21(entry) != NULL ||
	    !(FUNC5(entry) == AE_IFREG))
		FUNC18(entry, 0);

	if (AE_IFDIR == FUNC5(entry)) {
		const char *p;
		size_t path_length;
		/*
		 * Ensure a trailing '/'.  Modify the entry so
		 * the client sees the change.
		 */
#if defined(_WIN32) && !defined(__CYGWIN__)
		const wchar_t *wp;

		wp = archive_entry_pathname_w(entry);
		if (wp != NULL && wp[wcslen(wp) -1] != L'/') {
			struct archive_wstring ws;

			archive_string_init(&ws);
			path_length = wcslen(wp);
			if (archive_wstring_ensure(&ws,
			    path_length + 2) == NULL) {
				archive_set_error(&a->archive, ENOMEM,
				    "Can't allocate ustar data");
				archive_wstring_free(&ws);
				return(ARCHIVE_FATAL);
			}
			/* Should we keep '\' ? */
			if (wp[path_length -1] == L'\\')
				path_length--;
			archive_wstrncpy(&ws, wp, path_length);
			archive_wstrappend_wchar(&ws, L'/');
			archive_entry_copy_pathname_w(entry, ws.s);
			archive_wstring_free(&ws);
			p = NULL;
		} else
#endif
			p = FUNC13(entry);
		/*
		 * On Windows, this is a backup operation just in
		 * case getting WCS failed. On POSIX, this is a
		 * normal operation.
		 */
		if (p != NULL && p[0] != '\0' && p[FUNC38(p) - 1] != '/') {
			struct archive_string as;

			FUNC32(&as);
			path_length = FUNC38(p);
			if (FUNC30(&as,
			    path_length + 2) == NULL) {
				FUNC26(&a->archive, ENOMEM,
				    "Can't allocate ustar data");
				FUNC31(&as);
				return(ARCHIVE_FATAL);
			}
#if defined(_WIN32) && !defined(__CYGWIN__)
			/* NOTE: This might break the pathname
			 * if the current code page is CP932 and
			 * the pathname includes a character '\'
			 * as a part of its multibyte pathname. */
			if (p[strlen(p) -1] == '\\')
				path_length--;
			else
#endif
			FUNC33(&as, p, path_length);
			FUNC27(&as, '/');
			FUNC3(entry, as.s);
			FUNC31(&as);
		}
	}

#if defined(_WIN32) && !defined(__CYGWIN__)
	/* Make sure the path separators in pathname, hardlink and symlink
	 * are all slash '/', not the Windows path separator '\'. */
	entry_main = __la_win_entry_in_posix_pathseparator(entry);
	if (entry_main == NULL) {
		archive_set_error(&a->archive, ENOMEM,
		    "Can't allocate ustar data");
		return(ARCHIVE_FATAL);
	}
	if (entry != entry_main)
		entry = entry_main;
	else
		entry_main = NULL;
#else
	entry_main = NULL;
#endif
	r = FUNC14(entry, &(gnutar->pathname),
	    &(gnutar->pathname_length), sconv);
	if (r != 0) {
		if (errno == ENOMEM) {
			FUNC26(&a->archive, ENOMEM,
			    "Can't allocate memory for Pathame");
			ret = ARCHIVE_FATAL;
			goto exit_write_header;
		}
		FUNC26(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "Can't translate pathname '%s' to %s",
		    FUNC13(entry),
		    FUNC28(sconv));
		ret2 = ARCHIVE_WARN;
	}
	r = FUNC24(entry, &(gnutar->uname),
	    &(gnutar->uname_length), sconv);
	if (r != 0) {
		if (errno == ENOMEM) {
			FUNC26(&a->archive, ENOMEM,
			    "Can't allocate memory for Uname");
			ret = ARCHIVE_FATAL;
			goto exit_write_header;
		}
		FUNC26(&a->archive,
		    ARCHIVE_ERRNO_FILE_FORMAT,
		    "Can't translate uname '%s' to %s",
		    FUNC23(entry),
		    FUNC28(sconv));
		ret2 = ARCHIVE_WARN;
	}
	r = FUNC8(entry, &(gnutar->gname),
	    &(gnutar->gname_length), sconv);
	if (r != 0) {
		if (errno == ENOMEM) {
			FUNC26(&a->archive, ENOMEM,
			    "Can't allocate memory for Gname");
			ret = ARCHIVE_FATAL;
			goto exit_write_header;
		}
		FUNC26(&a->archive,
		    ARCHIVE_ERRNO_FILE_FORMAT,
		    "Can't translate gname '%s' to %s",
		    FUNC7(entry),
		    FUNC28(sconv));
		ret2 = ARCHIVE_WARN;
	}

	/* If linkname is longer than 100 chars we need to add a 'K' header. */
	r = FUNC10(entry, &(gnutar->linkname),
	    &(gnutar->linkname_length), sconv);
	if (r != 0) {
		if (errno == ENOMEM) {
			FUNC26(&a->archive, ENOMEM,
			    "Can't allocate memory for Linkname");
			ret = ARCHIVE_FATAL;
			goto exit_write_header;
		}
		FUNC26(&a->archive,
		    ARCHIVE_ERRNO_FILE_FORMAT,
		    "Can't translate linkname '%s' to %s",
		    FUNC9(entry),
		    FUNC28(sconv));
		ret2 = ARCHIVE_WARN;
	}
	if (gnutar->linkname_length == 0) {
		r = FUNC22(entry, &(gnutar->linkname),
		    &(gnutar->linkname_length), sconv);
		if (r != 0) {
			if (errno == ENOMEM) {
				FUNC26(&a->archive, ENOMEM,
				    "Can't allocate memory for Linkname");
				ret = ARCHIVE_FATAL;
				goto exit_write_header;
			}
			FUNC26(&a->archive,
			    ARCHIVE_ERRNO_FILE_FORMAT,
			    "Can't translate linkname '%s' to %s",
			    FUNC9(entry),
			    FUNC28(sconv));
			ret2 = ARCHIVE_WARN;
		}
	}
	if (gnutar->linkname_length > GNUTAR_linkname_size) {
		size_t length = gnutar->linkname_length + 1;
		struct archive_entry *temp = FUNC12(&a->archive);

		/* Uname/gname here don't really matter since no one reads them;
		 * these are the values that GNU tar happens to use on FreeBSD. */
		FUNC19(temp, "root");
		FUNC16(temp, "wheel");

		FUNC17(temp, "././@LongLink");
		FUNC18(temp, length);
		ret = FUNC25(a, buff, temp, 'K');
		FUNC6(temp);
		if (ret < ARCHIVE_WARN)
			goto exit_write_header;
		ret = FUNC1(a, buff, 512);
		if (ret < ARCHIVE_WARN)
			goto exit_write_header;
		/* Write name and trailing null byte. */
		ret = FUNC1(a, gnutar->linkname, length);
		if (ret < ARCHIVE_WARN)
			goto exit_write_header;
		/* Pad to 512 bytes */
		ret = FUNC0(a, 0x1ff & (-(ssize_t)length));
		if (ret < ARCHIVE_WARN)
			goto exit_write_header;
	}

	/* If pathname is longer than 100 chars we need to add an 'L' header. */
	if (gnutar->pathname_length > GNUTAR_name_size) {
		const char *pathname = gnutar->pathname;
		size_t length = gnutar->pathname_length + 1;
		struct archive_entry *temp = FUNC12(&a->archive);

		/* Uname/gname here don't really matter since no one reads them;
		 * these are the values that GNU tar happens to use on FreeBSD. */
		FUNC19(temp, "root");
		FUNC16(temp, "wheel");

		FUNC17(temp, "././@LongLink");
		FUNC18(temp, length);
		ret = FUNC25(a, buff, temp, 'L');
		FUNC6(temp);
		if (ret < ARCHIVE_WARN)
			goto exit_write_header;
		ret = FUNC1(a, buff, 512);
		if(ret < ARCHIVE_WARN)
			goto exit_write_header;
		/* Write pathname + trailing null byte. */
		ret = FUNC1(a, pathname, length);
		if(ret < ARCHIVE_WARN)
			goto exit_write_header;
		/* Pad to multiple of 512 bytes. */
		ret = FUNC0(a, 0x1ff & (-(ssize_t)length));
		if (ret < ARCHIVE_WARN)
			goto exit_write_header;
	}

	if (FUNC9(entry) != NULL) {
		tartype = '1';
	} else
		switch (FUNC5(entry)) {
		case AE_IFREG: tartype = '0' ; break;
		case AE_IFLNK: tartype = '2' ; break;
		case AE_IFCHR: tartype = '3' ; break;
		case AE_IFBLK: tartype = '4' ; break;
		case AE_IFDIR: tartype = '5' ; break;
		case AE_IFIFO: tartype = '6' ; break;
		case AE_IFSOCK:
			FUNC26(&a->archive,
			    ARCHIVE_ERRNO_FILE_FORMAT,
			    "tar format cannot archive socket");
			ret = ARCHIVE_FAILED;
			goto exit_write_header;
		default:
			FUNC26(&a->archive,
			    ARCHIVE_ERRNO_FILE_FORMAT,
			    "tar format cannot archive this (mode=0%lo)",
			    (unsigned long)FUNC11(entry));
			ret = ARCHIVE_FAILED;
			goto exit_write_header;
		}

	ret = FUNC25(a, buff, entry, tartype);
	if (ret < ARCHIVE_WARN)
		goto exit_write_header;
	if (ret2 < ret)
		ret = ret2;
	ret2 = FUNC1(a, buff, 512);
	if (ret2 < ARCHIVE_WARN) {
		ret = ret2;
		goto exit_write_header;
	}
	if (ret2 < ret)
		ret = ret2;

	gnutar->entry_bytes_remaining = FUNC20(entry);
	gnutar->entry_padding = 0x1ff & (-(int64_t)gnutar->entry_bytes_remaining);
exit_write_header:
	FUNC6(entry_main);
	return (ret);
}