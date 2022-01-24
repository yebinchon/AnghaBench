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
struct ustar {int init_default_conversion; int entry_padding; scalar_t__ entry_bytes_remaining; struct archive_string_conv* opt_sconv; struct archive_string_conv* sconv_default; } ;
struct archive_wstring {int /*<<< orphan*/  s; } ;
struct archive_write {int /*<<< orphan*/  archive; scalar_t__ format_data; } ;
struct archive_string_conv {int dummy; } ;
struct archive_string {int /*<<< orphan*/  s; } ;
struct archive_entry {int dummy; } ;
typedef  int int64_t ;

/* Variables and functions */
 scalar_t__ AE_IFDIR ; 
 scalar_t__ AE_IFREG ; 
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FAILED ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_WARN ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC0 (struct archive_write*,char*,struct archive_entry*,int,int,struct archive_string_conv*) ; 
 int FUNC1 (struct archive_write*,char*,int) ; 
 struct archive_entry* FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*) ; 
 int /*<<< orphan*/ * FUNC7 (struct archive_entry*) ; 
 char* FUNC8 (struct archive_entry*) ; 
 int* FUNC9 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC10 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct archive_entry*) ; 
 int /*<<< orphan*/ * FUNC12 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct archive_wstring*,char) ; 
 struct archive_string_conv* FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (struct archive_wstring*,size_t) ; 
 int /*<<< orphan*/  FUNC17 (struct archive_wstring*) ; 
 int /*<<< orphan*/  FUNC18 (struct archive_wstring*) ; 
 int /*<<< orphan*/  FUNC19 (struct archive_wstring*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC20 (struct archive_wstring*,int) ; 
 int /*<<< orphan*/ * FUNC21 (struct archive_wstring*,size_t) ; 
 int /*<<< orphan*/  FUNC22 (struct archive_wstring*) ; 
 int /*<<< orphan*/  FUNC23 (struct archive_wstring*,int const*,size_t) ; 
 int FUNC24 (char const*) ; 
 int FUNC25 (int const*) ; 

__attribute__((used)) static int
FUNC26(struct archive_write *a, struct archive_entry *entry)
{
	char buff[512];
	int ret, ret2;
	struct ustar *ustar;
	struct archive_entry *entry_main;
	struct archive_string_conv *sconv;

	ustar = (struct ustar *)a->format_data;

	/* Setup default string conversion. */
	if (ustar->opt_sconv == NULL) {
		if (!ustar->init_default_conversion) {
			ustar->sconv_default =
			    FUNC15(&(a->archive));
			ustar->init_default_conversion = 1;
		}
		sconv = ustar->sconv_default;
	} else
		sconv = ustar->opt_sconv;

	/* Sanity check. */
	if (FUNC8(entry) == NULL) {
		FUNC13(&a->archive, ARCHIVE_ERRNO_MISC,
		    "Can't record entry in tar file without pathname");
		return (ARCHIVE_FAILED);
	}

	/* Only regular files (not hardlinks) have data. */
	if (FUNC7(entry) != NULL ||
	    FUNC12(entry) != NULL ||
	    !(FUNC5(entry) == AE_IFREG))
		FUNC10(entry, 0);

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
			p = FUNC8(entry);
		/*
		 * On Windows, this is a backup operation just in
		 * case getting WCS failed. On POSIX, this is a
		 * normal operation.
		 */
		if (p != NULL && p[0] != '\0' && p[FUNC24(p) - 1] != '/') {
			struct archive_string as;

			FUNC18(&as);
			path_length = FUNC24(p);
			if (FUNC16(&as,
			    path_length + 2) == NULL) {
				FUNC13(&a->archive, ENOMEM,
				    "Can't allocate ustar data");
				FUNC17(&as);
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
			FUNC19(&as, p, path_length);
			FUNC14(&as, '/');
			FUNC3(entry, as.s);
			FUNC17(&as);
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
	ret = FUNC0(a, buff, entry, -1, 1, sconv);
	if (ret < ARCHIVE_WARN) {
		FUNC6(entry_main);
		return (ret);
	}
	ret2 = FUNC1(a, buff, 512);
	if (ret2 < ARCHIVE_WARN) {
		FUNC6(entry_main);
		return (ret2);
	}
	if (ret2 < ret)
		ret = ret2;

	ustar->entry_bytes_remaining = FUNC11(entry);
	ustar->entry_padding = 0x1ff & (-(int64_t)ustar->entry_bytes_remaining);
	FUNC6(entry_main);
	return (ret);
}