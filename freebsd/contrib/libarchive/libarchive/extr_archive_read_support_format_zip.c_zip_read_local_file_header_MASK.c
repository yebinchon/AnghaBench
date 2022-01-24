#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int wchar_t ;
struct zip_entry {char system; int zip_flags; char compression; scalar_t__ crc32; char decdat; int compressed_size; scalar_t__ uncompressed_size; int mode; int flags; int /*<<< orphan*/  atime; int /*<<< orphan*/  ctime; int /*<<< orphan*/  mtime; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct TYPE_6__ {int /*<<< orphan*/  s; } ;
struct zip {int end_of_entry; int init_default_conversion; int has_encrypted_entries; int init_decryption; int entry_bytes_remaining; TYPE_1__ format_name; struct zip_entry* entry; struct archive_string_conv* sconv_utf8; struct archive_string_conv* sconv_default; struct archive_string_conv* sconv; int /*<<< orphan*/  ignore_crc32; int /*<<< orphan*/  (* crc32func ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  entry_crc32; scalar_t__ entry_compressed_bytes_read; scalar_t__ entry_uncompressed_bytes_read; scalar_t__ decompress_init; } ;
struct archive_wstring {char* s; } ;
struct archive_string_conv {int dummy; } ;
struct archive_string {char* s; } ;
struct TYPE_7__ {int /*<<< orphan*/  archive_format_name; } ;
struct archive_read {TYPE_3__ archive; } ;
struct archive_entry {int dummy; } ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int AE_IFDIR ; 
 int AE_IFIFO ; 
 int AE_IFLNK ; 
 int AE_IFMT ; 
 int AE_IFREG ; 
 int ARCHIVE_ERRNO_FILE_FORMAT ; 
 int ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 int ENOMEM ; 
 int LA_FROM_CENTRAL_DIRECTORY ; 
 int ZIP_CENTRAL_DIRECTORY_ENCRYPTED ; 
 int ZIP_ENCRYPTED ; 
 int ZIP_LENGTH_AT_END ; 
 int ZIP_STRONG_ENCRYPTED ; 
 int ZIP_UTF8_NAME ; 
 void* FUNC0 (struct archive_read*,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct archive_read*,size_t) ; 
 scalar_t__ FUNC2 (struct archive_entry*,void const*,size_t,struct archive_string_conv*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,char*) ; 
 scalar_t__ FUNC4 (struct archive_entry*,char const*,size_t,struct archive_string_conv*) ; 
 char* FUNC5 (struct archive_entry*) ; 
 int* FUNC6 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct archive_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct archive_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 void* FUNC17 (char const*) ; 
 void* FUNC18 (char const*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC20 (struct archive_wstring*,char) ; 
 int /*<<< orphan*/  FUNC21 (struct archive_wstring*,char const*) ; 
 int /*<<< orphan*/  FUNC22 (struct archive_string_conv*) ; 
 struct archive_string_conv* FUNC23 (TYPE_3__*,char*,int) ; 
 struct archive_string_conv* FUNC24 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC26 (struct archive_wstring*) ; 
 int /*<<< orphan*/  FUNC27 (struct archive_wstring*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*,char*,char,char,int /*<<< orphan*/ ) ; 
 size_t FUNC29 (struct archive_wstring*) ; 
 int /*<<< orphan*/  FUNC30 (struct archive_wstring*,int) ; 
 int /*<<< orphan*/  FUNC31 (struct archive_wstring*,int const*) ; 
 int /*<<< orphan*/  FUNC32 (struct archive_wstring*,int const*) ; 
 int /*<<< orphan*/  FUNC33 (struct archive_wstring*) ; 
 int /*<<< orphan*/  FUNC34 (char) ; 
 int errno ; 
 scalar_t__ FUNC35 (char const*,char*,int) ; 
 int FUNC36 (struct archive_read*,struct archive_entry*,void const*,size_t,struct zip_entry*) ; 
 size_t FUNC37 (char const*) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC39 (int const*,int) ; 
 size_t FUNC40 (int const*) ; 
 int /*<<< orphan*/  FUNC41 (char const*) ; 

__attribute__((used)) static int
FUNC42(struct archive_read *a, struct archive_entry *entry,
    struct zip *zip)
{
	const char *p;
	const void *h;
	const wchar_t *wp;
	const char *cp;
	size_t len, filename_length, extra_length;
	struct archive_string_conv *sconv;
	struct zip_entry *zip_entry = zip->entry;
	struct zip_entry zip_entry_central_dir;
	int ret = ARCHIVE_OK;
	char version;

	/* Save a copy of the original for consistency checks. */
	zip_entry_central_dir = *zip_entry;

	zip->decompress_init = 0;
	zip->end_of_entry = 0;
	zip->entry_uncompressed_bytes_read = 0;
	zip->entry_compressed_bytes_read = 0;
	zip->entry_crc32 = zip->crc32func(0, NULL, 0);

	/* Setup default conversion. */
	if (zip->sconv == NULL && !zip->init_default_conversion) {
		zip->sconv_default =
		    FUNC24(&(a->archive));
		zip->init_default_conversion = 1;
	}

	if ((p = FUNC0(a, 30, NULL)) == NULL) {
		FUNC19(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "Truncated ZIP file header");
		return (ARCHIVE_FATAL);
	}

	if (FUNC35(p, "PK\003\004", 4) != 0) {
		FUNC19(&a->archive, -1, "Damaged Zip archive");
		return ARCHIVE_FATAL;
	}
	version = p[4];
	zip_entry->system = p[5];
	zip_entry->zip_flags = FUNC17(p + 6);
	if (zip_entry->zip_flags & (ZIP_ENCRYPTED | ZIP_STRONG_ENCRYPTED)) {
		zip->has_encrypted_entries = 1;
		FUNC10(entry, 1);
		if (zip_entry->zip_flags & ZIP_CENTRAL_DIRECTORY_ENCRYPTED &&
			zip_entry->zip_flags & ZIP_ENCRYPTED &&
			zip_entry->zip_flags & ZIP_STRONG_ENCRYPTED) {
			FUNC11(entry, 1);
			return ARCHIVE_FATAL;
		}
	}
	zip->init_decryption = (zip_entry->zip_flags & ZIP_ENCRYPTED);
	zip_entry->compression = (char)FUNC17(p + 8);
	zip_entry->mtime = FUNC41(p + 10);
	zip_entry->crc32 = FUNC18(p + 14);
	if (zip_entry->zip_flags & ZIP_LENGTH_AT_END)
		zip_entry->decdat = p[11];
	else
		zip_entry->decdat = p[17];
	zip_entry->compressed_size = FUNC18(p + 18);
	zip_entry->uncompressed_size = FUNC18(p + 22);
	filename_length = FUNC17(p + 26);
	extra_length = FUNC17(p + 28);

	FUNC1(a, 30);

	/* Read the filename. */
	if ((h = FUNC0(a, filename_length, NULL)) == NULL) {
		FUNC19(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "Truncated ZIP file header");
		return (ARCHIVE_FATAL);
	}
	if (zip_entry->zip_flags & ZIP_UTF8_NAME) {
		/* The filename is stored to be UTF-8. */
		if (zip->sconv_utf8 == NULL) {
			zip->sconv_utf8 =
			    FUNC23(
				&a->archive, "UTF-8", 1);
			if (zip->sconv_utf8 == NULL)
				return (ARCHIVE_FATAL);
		}
		sconv = zip->sconv_utf8;
	} else if (zip->sconv != NULL)
		sconv = zip->sconv;
	else
		sconv = zip->sconv_default;

	if (FUNC2(entry,
	    h, filename_length, sconv) != 0) {
		if (errno == ENOMEM) {
			FUNC19(&a->archive, ENOMEM,
			    "Can't allocate memory for Pathname");
			return (ARCHIVE_FATAL);
		}
		FUNC19(&a->archive,
		    ARCHIVE_ERRNO_FILE_FORMAT,
		    "Pathname cannot be converted "
		    "from %s to current locale.",
		    FUNC22(sconv));
		ret = ARCHIVE_WARN;
	}
	FUNC1(a, filename_length);

	/* Read the extra data. */
	if ((h = FUNC0(a, extra_length, NULL)) == NULL) {
		FUNC19(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "Truncated ZIP file header");
		return (ARCHIVE_FATAL);
	}

	if (ARCHIVE_OK != FUNC36(a, entry, h, extra_length,
	    zip_entry)) {
		return ARCHIVE_FATAL;
	}
	FUNC1(a, extra_length);

	/* Work around a bug in Info-Zip: When reading from a pipe, it
	 * stats the pipe instead of synthesizing a file entry. */
	if ((zip_entry->mode & AE_IFMT) == AE_IFIFO) {
		zip_entry->mode &= ~ AE_IFMT;
		zip_entry->mode |= AE_IFREG;
	}

	/* If the mode is totally empty, set some sane default. */
	if (zip_entry->mode == 0) {
		zip_entry->mode |= 0664;
	}

	/* Windows archivers sometimes use backslash as the directory
	 * separator. Normalize to slash. */
	if (zip_entry->system == 0 &&
	    (wp = FUNC6(entry)) != NULL) {
		if (FUNC39(wp, L'/') == NULL && FUNC39(wp, L'\\') != NULL) {
			size_t i;
			struct archive_wstring s;
			FUNC27(&s);
			FUNC32(&s, wp);
			for (i = 0; i < FUNC29(&s); i++) {
				if (s.s[i] == '\\')
					s.s[i] = '/';
			}
			FUNC3(entry, s.s);
			FUNC33(&s);
		}
	}

	/* Make sure that entries with a trailing '/' are marked as directories
	 * even if the External File Attributes contains bogus values.  If this
	 * is not a directory and there is no type, assume a regular file. */
	if ((zip_entry->mode & AE_IFMT) != AE_IFDIR) {
		int has_slash;

		wp = FUNC6(entry);
		if (wp != NULL) {
			len = FUNC40(wp);
			has_slash = len > 0 && wp[len - 1] == L'/';
		} else {
			cp = FUNC5(entry);
			len = (cp != NULL)?FUNC37(cp):0;
			has_slash = len > 0 && cp[len - 1] == '/';
		}
		/* Correct file type as needed. */
		if (has_slash) {
			zip_entry->mode &= ~AE_IFMT;
			zip_entry->mode |= AE_IFDIR;
			zip_entry->mode |= 0111;
		} else if ((zip_entry->mode & AE_IFMT) == 0) {
			zip_entry->mode |= AE_IFREG;
		}
	}

	/* Make sure directories end in '/' */
	if ((zip_entry->mode & AE_IFMT) == AE_IFDIR) {
		wp = FUNC6(entry);
		if (wp != NULL) {
			len = FUNC40(wp);
			if (len > 0 && wp[len - 1] != L'/') {
				struct archive_wstring s;
				FUNC27(&s);
				FUNC31(&s, wp);
				FUNC30(&s, L'/');
				FUNC3(entry, s.s);
				FUNC33(&s);
			}
		} else {
			cp = FUNC5(entry);
			len = (cp != NULL)?FUNC37(cp):0;
			if (len > 0 && cp[len - 1] != '/') {
				struct archive_string s;
				FUNC27(&s);
				FUNC21(&s, cp);
				FUNC20(&s, '/');
				FUNC14(entry, s.s);
				FUNC26(&s);
			}
		}
	}

	if (zip_entry->flags & LA_FROM_CENTRAL_DIRECTORY) {
		/* If this came from the central dir, its size info
		 * is definitive, so ignore the length-at-end flag. */
		zip_entry->zip_flags &= ~ZIP_LENGTH_AT_END;
		/* If local header is missing a value, use the one from
		   the central directory.  If both have it, warn about
		   mismatches. */
		if (zip_entry->crc32 == 0) {
			zip_entry->crc32 = zip_entry_central_dir.crc32;
		} else if (!zip->ignore_crc32
		    && zip_entry->crc32 != zip_entry_central_dir.crc32) {
			FUNC19(&a->archive,
			    ARCHIVE_ERRNO_FILE_FORMAT,
			    "Inconsistent CRC32 values");
			ret = ARCHIVE_WARN;
		}
		if (zip_entry->compressed_size == 0) {
			zip_entry->compressed_size
			    = zip_entry_central_dir.compressed_size;
		} else if (zip_entry->compressed_size
		    != zip_entry_central_dir.compressed_size) {
			FUNC19(&a->archive,
			    ARCHIVE_ERRNO_FILE_FORMAT,
			    "Inconsistent compressed size: "
			    "%jd in central directory, %jd in local header",
			    (intmax_t)zip_entry_central_dir.compressed_size,
			    (intmax_t)zip_entry->compressed_size);
			ret = ARCHIVE_WARN;
		}
		if (zip_entry->uncompressed_size == 0) {
			zip_entry->uncompressed_size
			    = zip_entry_central_dir.uncompressed_size;
		} else if (zip_entry->uncompressed_size
		    != zip_entry_central_dir.uncompressed_size) {
			FUNC19(&a->archive,
			    ARCHIVE_ERRNO_FILE_FORMAT,
			    "Inconsistent uncompressed size: "
			    "%jd in central directory, %jd in local header",
			    (intmax_t)zip_entry_central_dir.uncompressed_size,
			    (intmax_t)zip_entry->uncompressed_size);
			ret = ARCHIVE_WARN;
		}
	}

	/* Populate some additional entry fields: */
	FUNC12(entry, zip_entry->mode);
	FUNC16(entry, zip_entry->uid);
	FUNC9(entry, zip_entry->gid);
	FUNC13(entry, zip_entry->mtime, 0);
	FUNC8(entry, zip_entry->ctime, 0);
	FUNC7(entry, zip_entry->atime, 0);

	if ((zip->entry->mode & AE_IFMT) == AE_IFLNK) {
		size_t linkname_length;

		if (zip_entry->compressed_size > 64 * 1024) {
			FUNC19(&a->archive, ARCHIVE_ERRNO_MISC,
			    "Zip file with oversized link entry");
			return ARCHIVE_FATAL;
		}

		linkname_length = (size_t)zip_entry->compressed_size;

		FUNC15(entry, 0);
		p = FUNC0(a, linkname_length, NULL);
		if (p == NULL) {
			FUNC19(&a->archive, ARCHIVE_ERRNO_MISC,
			    "Truncated Zip file");
			return ARCHIVE_FATAL;
		}

		sconv = zip->sconv;
		if (sconv == NULL && (zip->entry->zip_flags & ZIP_UTF8_NAME))
			sconv = zip->sconv_utf8;
		if (sconv == NULL)
			sconv = zip->sconv_default;
		if (FUNC4(entry, p, linkname_length,
		    sconv) != 0) {
			if (errno != ENOMEM && sconv == zip->sconv_utf8 &&
			    (zip->entry->zip_flags & ZIP_UTF8_NAME))
			    FUNC4(entry, p,
				linkname_length, NULL);
			if (errno == ENOMEM) {
				FUNC19(&a->archive, ENOMEM,
				    "Can't allocate memory for Symlink");
				return (ARCHIVE_FATAL);
			}
			/*
			 * Since there is no character-set regulation for
			 * symlink name, do not report the conversion error
			 * in an automatic conversion.
			 */
			if (sconv != zip->sconv_utf8 ||
			    (zip->entry->zip_flags & ZIP_UTF8_NAME) == 0) {
				FUNC19(&a->archive,
				    ARCHIVE_ERRNO_FILE_FORMAT,
				    "Symlink cannot be converted "
				    "from %s to current locale.",
				    FUNC22(
					sconv));
				ret = ARCHIVE_WARN;
			}
		}
		zip_entry->uncompressed_size = zip_entry->compressed_size = 0;

		if (FUNC1(a, linkname_length) < 0) {
			FUNC19(&a->archive, ARCHIVE_ERRNO_MISC,
			    "Read error skipping symlink target name");
			return ARCHIVE_FATAL;
		}
	} else if (0 == (zip_entry->zip_flags & ZIP_LENGTH_AT_END)
	    || zip_entry->uncompressed_size > 0) {
		/* Set the size only if it's meaningful. */
		FUNC15(entry, zip_entry->uncompressed_size);
	}
	zip->entry_bytes_remaining = zip_entry->compressed_size;

	/* If there's no body, force read_data() to return EOF immediately. */
	if (0 == (zip_entry->zip_flags & ZIP_LENGTH_AT_END)
	    && zip->entry_bytes_remaining < 1)
		zip->end_of_entry = 1;

	/* Set up a more descriptive format name. */
        FUNC25(&zip->format_name);
	FUNC28(&zip->format_name, "ZIP %d.%d (%s)",
	    version / 10, version % 10,
	    FUNC34(zip->entry->compression));
	a->archive.archive_format_name = zip->format_name.s;

	return (ret);
}