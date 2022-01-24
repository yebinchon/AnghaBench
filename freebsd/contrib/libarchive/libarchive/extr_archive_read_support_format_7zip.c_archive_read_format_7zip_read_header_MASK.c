#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint64_t ;
typedef  size_t uint32_t ;
struct TYPE_13__ {char* archive_format_name; int /*<<< orphan*/  archive_format; } ;
struct archive_read {TYPE_6__ archive; TYPE_1__* format; } ;
struct archive_entry {int dummy; } ;
struct _7zip_entry {size_t folderIndex; int mode; int flg; size_t ssIndex; int /*<<< orphan*/  atime_ns; int /*<<< orphan*/  atime; int /*<<< orphan*/  ctime_ns; int /*<<< orphan*/  ctime; int /*<<< orphan*/  mtime_ns; int /*<<< orphan*/  mtime; int /*<<< orphan*/  name_len; scalar_t__ utf16name; } ;
struct TYPE_11__ {int* unpackSizes; } ;
struct TYPE_9__ {size_t numFolders; struct _7z_folder* folders; } ;
struct TYPE_12__ {TYPE_4__ ss; TYPE_2__ ci; } ;
struct _7zip {scalar_t__ has_encrypted_entries; size_t entries_remaining; int end_of_entry; int entry_bytes_remaining; char* format_name; TYPE_5__ si; int /*<<< orphan*/ * sconv; int /*<<< orphan*/  entry_crc32; scalar_t__ entry_offset; struct _7zip_entry* entry; struct _7zip_entry* entries; scalar_t__ numFiles; } ;
struct _7z_header_info {int dummy; } ;
struct _7z_folder {size_t numCoders; TYPE_3__* coders; } ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  header ;
struct TYPE_10__ {int codec; } ;
struct TYPE_8__ {scalar_t__ data; } ;

/* Variables and functions */
 int AE_IFLNK ; 
 int AE_IFMT ; 
 int AE_IFREG ; 
 int ARCHIVE_EOF ; 
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int ARCHIVE_FATAL ; 
 int /*<<< orphan*/  ARCHIVE_FORMAT_7ZIP ; 
 int ARCHIVE_OK ; 
 scalar_t__ ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW ; 
 int ARCHIVE_WARN ; 
 int ATIME_IS_SET ; 
 int CTIME_IS_SET ; 
 scalar_t__ ENOMEM ; 
 int MTIME_IS_SET ; 
#define  _7Z_CRYPTO_AES_256_SHA_256 130 
#define  _7Z_CRYPTO_MAIN_ZIP 129 
#define  _7Z_CRYPTO_RAR_29 128 
 scalar_t__ FUNC0 (struct archive_entry*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*,int) ; 
 int FUNC8 (struct archive_read*,void const**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_6__*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC13 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC14 (struct _7z_header_info*) ; 
 int /*<<< orphan*/  FUNC15 (unsigned char*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC16 (struct _7z_header_info*,int /*<<< orphan*/ ,int) ; 
 unsigned char* FUNC17 (unsigned char*,size_t) ; 
 int FUNC18 (struct archive_read*,struct _7zip*,struct _7z_header_info*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*) ; 

__attribute__((used)) static int
FUNC20(struct archive_read *a,
	struct archive_entry *entry)
{
	struct _7zip *zip = (struct _7zip *)a->format->data;
	struct _7zip_entry *zip_entry;
	int r, ret = ARCHIVE_OK;
	struct _7z_folder *folder = 0;
	uint64_t fidx = 0;

	/*
	 * It should be sufficient to call archive_read_next_header() for
	 * a reader to determine if an entry is encrypted or not. If the
	 * encryption of an entry is only detectable when calling
	 * archive_read_data(), so be it. We'll do the same check there
	 * as well.
	 */
	if (zip->has_encrypted_entries == ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW) {
		zip->has_encrypted_entries = 0;
	}

	a->archive.archive_format = ARCHIVE_FORMAT_7ZIP;
	if (a->archive.archive_format_name == NULL)
		a->archive.archive_format_name = "7-Zip";

	if (zip->entries == NULL) {
		struct _7z_header_info header;

		FUNC16(&header, 0, sizeof(header));
		r = FUNC18(a, zip, &header);
		FUNC14(&header);
		if (r != ARCHIVE_OK)
			return (r);
		zip->entries_remaining = (size_t)zip->numFiles;
		zip->entry = zip->entries;
	} else {
		++zip->entry;
	}
	zip_entry = zip->entry;

	if (zip->entries_remaining <= 0 || zip_entry == NULL)
		return ARCHIVE_EOF;
	--zip->entries_remaining;

	zip->entry_offset = 0;
	zip->end_of_entry = 0;
	zip->entry_crc32 = FUNC12(0, NULL, 0);

	/* Setup a string conversion for a filename. */
	if (zip->sconv == NULL) {
		zip->sconv = FUNC11(
		    &a->archive, "UTF-16LE", 1);
		if (zip->sconv == NULL)
			return (ARCHIVE_FATAL);
	}

	/* Figure out if the entry is encrypted by looking at the folder
	   that is associated to the current 7zip entry. If the folder
	   has a coder with a _7Z_CRYPTO codec then the folder is encrypted.
	   Hence the entry must also be encrypted. */
	if (zip_entry && zip_entry->folderIndex < zip->si.ci.numFolders) {
		folder = &(zip->si.ci.folders[zip_entry->folderIndex]);
		for (fidx=0; folder && fidx<folder->numCoders; fidx++) {
			switch(folder->coders[fidx].codec) {
				case _7Z_CRYPTO_MAIN_ZIP:
				case _7Z_CRYPTO_RAR_29:
				case _7Z_CRYPTO_AES_256_SHA_256: {
					FUNC4(entry, 1);
					zip->has_encrypted_entries = 1;
					break;
				}
			}
		}
	}

	/* Now that we've checked for encryption, if there were still no
	 * encrypted entries found we can say for sure that there are none.
	 */
	if (zip->has_encrypted_entries == ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW) {
		zip->has_encrypted_entries = 0;
	}

	if (FUNC0(entry,
	    (const char *)zip_entry->utf16name,
	    zip_entry->name_len, zip->sconv) != 0) {
		if (errno == ENOMEM) {
			FUNC9(&a->archive, ENOMEM,
			    "Can't allocate memory for Pathname");
			return (ARCHIVE_FATAL);
		}
		FUNC9(&a->archive,
		    ARCHIVE_ERRNO_FILE_FORMAT,
		    "Pathname cannot be converted "
		    "from %s to current locale.",
		    FUNC10(zip->sconv));
		ret = ARCHIVE_WARN;
	}

	/* Populate some additional entry fields: */
	FUNC5(entry, zip_entry->mode);
	if (zip_entry->flg & MTIME_IS_SET)
		FUNC6(entry, zip_entry->mtime,
			zip_entry->mtime_ns);
	if (zip_entry->flg & CTIME_IS_SET)
		FUNC3(entry, zip_entry->ctime,
		    zip_entry->ctime_ns);
	if (zip_entry->flg & ATIME_IS_SET)
		FUNC2(entry, zip_entry->atime,
		    zip_entry->atime_ns);
	if (zip_entry->ssIndex != (uint32_t)-1) {
		zip->entry_bytes_remaining =
		    zip->si.ss.unpackSizes[zip_entry->ssIndex];
		FUNC7(entry, zip->entry_bytes_remaining);
	} else {
		zip->entry_bytes_remaining = 0;
		FUNC7(entry, 0);
	}

	/* If there's no body, force read_data() to return EOF immediately. */
	if (zip->entry_bytes_remaining < 1)
		zip->end_of_entry = 1;

	if ((zip_entry->mode & AE_IFMT) == AE_IFLNK) {
		unsigned char *symname = NULL;
		size_t symsize = 0;

		/*
		 * Symbolic-name is recorded as its contents. We have to
		 * read the contents at this time.
		 */
		while (zip->entry_bytes_remaining > 0) {
			const void *buff;
			unsigned char *mem;
			size_t size;
			int64_t offset;

			r = FUNC8(a, &buff,
				&size, &offset);
			if (r < ARCHIVE_WARN) {
				FUNC13(symname);
				return (r);
			}
			mem = FUNC17(symname, symsize + size + 1);
			if (mem == NULL) {
				FUNC13(symname);
				FUNC9(&a->archive, ENOMEM,
				    "Can't allocate memory for Symname");
				return (ARCHIVE_FATAL);
			}
			symname = mem;
			FUNC15(symname+symsize, buff, size);
			symsize += size;
		}
		if (symsize == 0) {
			/* If there is no symname, handle it as a regular
			 * file. */
			zip_entry->mode &= ~AE_IFMT;
			zip_entry->mode |= AE_IFREG;
			FUNC5(entry, zip_entry->mode);
		} else {
			symname[symsize] = '\0';
			FUNC1(entry,
			    (const char *)symname);
		}
		FUNC13(symname);
		FUNC7(entry, 0);
	}

	/* Set up a more descriptive format name. */
	FUNC19(zip->format_name, "7-Zip");
	a->archive.archive_format_name = zip->format_name;

	return (ret);
}