#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct archive_string {int /*<<< orphan*/  s; int /*<<< orphan*/  length; } ;
struct lha {int end_of_entry; int found_first_header; unsigned char level; unsigned char* method; int directory; int entry_is_compressed; scalar_t__ compsize; int setflag; int mode; int dos_attr; scalar_t__ entry_bytes_remaining; char* format_name; scalar_t__ entry_crc_calculated; scalar_t__ entry_offset; scalar_t__ origsize; scalar_t__ atime_tv_nsec; scalar_t__ atime; scalar_t__ mtime_tv_nsec; scalar_t__ mtime; scalar_t__ birthtime_tv_nsec; scalar_t__ birthtime; struct archive_string gname; struct archive_string uname; scalar_t__ gid; scalar_t__ uid; int /*<<< orphan*/ * sconv; struct archive_string dirname; struct archive_string filename; int /*<<< orphan*/ * opt_sconv; scalar_t__ header_size; scalar_t__ entry_unconsumed; scalar_t__ end_of_entry_cleanup; scalar_t__ decompress_init; } ;
struct TYPE_4__ {char* archive_format_name; int /*<<< orphan*/  archive_format; } ;
struct archive_read {TYPE_2__ archive; TYPE_1__* format; } ;
struct archive_entry {int dummy; } ;
typedef  int /*<<< orphan*/  signature ;
struct TYPE_3__ {scalar_t__ data; } ;

/* Variables and functions */
 int AE_IFDIR ; 
 int AE_IFLNK ; 
 int AE_IFMT ; 
 int AE_IFREG ; 
 int ARCHIVE_EOF ; 
 scalar_t__ ARCHIVE_ERRNO_FILE_FORMAT ; 
 int ARCHIVE_FAILED ; 
 int ARCHIVE_FATAL ; 
 int /*<<< orphan*/  ARCHIVE_FORMAT_LHA ; 
 int ARCHIVE_WARN ; 
 int ATIME_IS_SET ; 
 int BIRTHTIME_IS_SET ; 
 scalar_t__ ENOMEM ; 
 size_t H_LEVEL_OFFSET ; 
 int H_METHOD_OFFSET ; 
 int H_SIZE ; 
 int UNIX_MODE_IS_SET ; 
 void* FUNC0 (struct archive_read*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct archive_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct archive_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_entry*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct archive_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct archive_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct archive_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC15 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC16 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC17 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC18 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC20 (struct archive_string*,struct archive_string*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct archive_string*,struct archive_string*) ; 
 int /*<<< orphan*/  FUNC23 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC24 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC25 (struct archive_string*) ; 
 scalar_t__ FUNC26 (struct archive_string*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC27 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 (struct archive_string*,struct archive_string*) ; 
 int FUNC30 (struct archive_read*,struct lha*) ; 
 int FUNC31 (struct archive_read*,struct lha*) ; 
 int FUNC32 (struct archive_read*,struct lha*) ; 
 int FUNC33 (struct archive_read*,struct lha*) ; 
 int /*<<< orphan*/  FUNC34 (struct lha*,struct archive_entry*) ; 
 int FUNC35 (struct archive_read*) ; 
 scalar_t__ FUNC36 (unsigned char*,char*,int) ; 
 int /*<<< orphan*/  FUNC37 (char*,char*,unsigned char,unsigned char,unsigned char) ; 
 int FUNC38 (struct archive_read*) ; 

__attribute__((used)) static int
FUNC39(struct archive_read *a,
    struct archive_entry *entry)
{
	struct archive_string linkname;
	struct archive_string pathname;
	struct lha *lha;
	const unsigned char *p;
	const char *signature;
	int err;
	
	FUNC28();

	a->archive.archive_format = ARCHIVE_FORMAT_LHA;
	if (a->archive.archive_format_name == NULL)
		a->archive.archive_format_name = "lha";

	lha = (struct lha *)(a->format->data);
	lha->decompress_init = 0;
	lha->end_of_entry = 0;
	lha->end_of_entry_cleanup = 0;
	lha->entry_unconsumed = 0;

	if ((p = FUNC0(a, H_SIZE, NULL)) == NULL) {
		/*
		 * LHa archiver added 0 to the tail of its archive file as
		 * the mark of the end of the archive.
		 */
		signature = FUNC0(a, sizeof(signature[0]), NULL);
		if (signature == NULL || signature[0] == 0)
			return (ARCHIVE_EOF);
		return (FUNC38(a));
	}

	signature = (const char *)p;
	if (lha->found_first_header == 0 &&
	    signature[0] == 'M' && signature[1] == 'Z') {
                /* This is an executable?  Must be self-extracting... 	*/
		err = FUNC35(a);
		if (err < ARCHIVE_WARN)
			return (err);

		if ((p = FUNC0(a, sizeof(*p), NULL)) == NULL)
			return (FUNC38(a));
		signature = (const char *)p;
	}
	/* signature[0] == 0 means the end of an LHa archive file. */
	if (signature[0] == 0)
		return (ARCHIVE_EOF);

	/*
	 * Check the header format and method type.
	 */
	if (FUNC27(p) != 0) {
		FUNC19(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "Bad LHa file");
		return (ARCHIVE_FATAL);
	}

	/* We've found the first header. */
	lha->found_first_header = 1;
	/* Set a default value and common data */
	lha->header_size = 0;
	lha->level = p[H_LEVEL_OFFSET];
	lha->method[0] = p[H_METHOD_OFFSET+1];
	lha->method[1] = p[H_METHOD_OFFSET+2];
	lha->method[2] = p[H_METHOD_OFFSET+3];
	if (FUNC36(lha->method, "lhd", 3) == 0)
		lha->directory = 1;
	else
		lha->directory = 0;
	if (FUNC36(lha->method, "lh0", 3) == 0 ||
	    FUNC36(lha->method, "lz4", 3) == 0)
		lha->entry_is_compressed = 0;
	else
		lha->entry_is_compressed = 1;

	lha->compsize = 0;
	lha->origsize = 0;
	lha->setflag = 0;
	lha->birthtime = 0;
	lha->birthtime_tv_nsec = 0;
	lha->mtime = 0;
	lha->mtime_tv_nsec = 0;
	lha->atime = 0;
	lha->atime_tv_nsec = 0;
	lha->mode = (lha->directory)? 0777 : 0666;
	lha->uid = 0;
	lha->gid = 0;
	FUNC23(&lha->dirname);
	FUNC23(&lha->filename);
	lha->dos_attr = 0;
	if (lha->opt_sconv != NULL)
		lha->sconv = lha->opt_sconv;
	else
		lha->sconv = NULL;

	switch (p[H_LEVEL_OFFSET]) {
	case 0:
		err = FUNC30(a, lha);
		break;
	case 1:
		err = FUNC31(a, lha);
		break;
	case 2:
		err = FUNC32(a, lha);
		break;
	case 3:
		err = FUNC33(a, lha);
		break;
	default:
		FUNC19(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "Unsupported LHa header level %d", p[H_LEVEL_OFFSET]);
		err = ARCHIVE_FATAL;
		break;
	}
	if (err < ARCHIVE_WARN)
		return (err);


	if (!lha->directory && FUNC26(&lha->filename) == 0)
		/* The filename has not been set */
		return (FUNC38(a));

	/*
	 * Make a pathname from a dirname and a filename.
	 */
	FUNC20(&lha->dirname, &lha->filename);
	FUNC25(&pathname);
	FUNC25(&linkname);
	FUNC22(&pathname, &lha->dirname);

	if ((lha->mode & AE_IFMT) == AE_IFLNK) {
		/*
	 	 * Extract the symlink-name if it's included in the pathname.
	 	 */
		if (!FUNC29(&linkname, &pathname)) {
			/* We couldn't get the symlink-name. */
			FUNC19(&a->archive,
		    	    ARCHIVE_ERRNO_FILE_FORMAT,
			    "Unknown symlink-name");
			FUNC24(&pathname);
			FUNC24(&linkname);
			return (ARCHIVE_FAILED);
		}
	} else {
		/*
		 * Make sure a file-type is set.
		 * The mode has been overridden if it is in the extended data.
		 */
		lha->mode = (lha->mode & ~AE_IFMT) |
		    ((lha->directory)? AE_IFDIR: AE_IFREG);
	}
	if ((lha->setflag & UNIX_MODE_IS_SET) == 0 &&
	    (lha->dos_attr & 1) != 0)
		lha->mode &= ~(0222);/* read only. */

	/*
	 * Set basic file parameters.
	 */
	if (FUNC1(entry, pathname.s,
	    pathname.length, lha->sconv) != 0) {
		if (errno == ENOMEM) {
			FUNC19(&a->archive, ENOMEM,
			    "Can't allocate memory for Pathname");
			return (ARCHIVE_FATAL);
		}
		FUNC19(&a->archive,
		    ARCHIVE_ERRNO_FILE_FORMAT,
		    "Pathname cannot be converted "
		    "from %s to current locale.",
		    FUNC21(lha->sconv));
		err = ARCHIVE_WARN;
	}
	FUNC24(&pathname);
	if (FUNC26(&linkname) > 0) {
		if (FUNC2(entry, linkname.s,
		    linkname.length, lha->sconv) != 0) {
			if (errno == ENOMEM) {
				FUNC19(&a->archive, ENOMEM,
				    "Can't allocate memory for Linkname");
				return (ARCHIVE_FATAL);
			}
			FUNC19(&a->archive,
			    ARCHIVE_ERRNO_FILE_FORMAT,
			    "Linkname cannot be converted "
			    "from %s to current locale.",
			    FUNC21(lha->sconv));
			err = ARCHIVE_WARN;
		}
	} else
		FUNC11(entry, NULL);
	FUNC24(&linkname);
	/*
	 * When a header level is 0, there is a possibility that
	 * a pathname and a symlink has '\' character, a directory
	 * separator in DOS/Windows. So we should convert it to '/'.
	 */
	if (p[H_LEVEL_OFFSET] == 0)
		FUNC34(lha, entry);

	FUNC8(entry, lha->mode);
	FUNC12(entry, lha->uid);
	FUNC6(entry, lha->gid);
	if (FUNC26(&lha->uname) > 0)
		FUNC13(entry, lha->uname.s);
	if (FUNC26(&lha->gname) > 0)
		FUNC7(entry, lha->gname.s);
	if (lha->setflag & BIRTHTIME_IS_SET) {
		FUNC4(entry, lha->birthtime,
		    lha->birthtime_tv_nsec);
		FUNC5(entry, lha->birthtime,
		    lha->birthtime_tv_nsec);
	} else {
		FUNC16(entry);
		FUNC17(entry);
	}
	FUNC9(entry, lha->mtime, lha->mtime_tv_nsec);
	if (lha->setflag & ATIME_IS_SET)
		FUNC3(entry, lha->atime,
		    lha->atime_tv_nsec);
	else
		FUNC15(entry);
	if (lha->directory || FUNC14(entry) != NULL)
		FUNC18(entry);
	else
		FUNC10(entry, lha->origsize);

	/*
	 * Prepare variables used to read a file content.
	 */
	lha->entry_bytes_remaining = lha->compsize;
	if (lha->entry_bytes_remaining < 0) {
		FUNC19(&a->archive,
		    ARCHIVE_ERRNO_FILE_FORMAT,
		    "Invalid LHa entry size");
		return (ARCHIVE_FATAL);
	}
	lha->entry_offset = 0;
	lha->entry_crc_calculated = 0;

	/*
	 * This file does not have a content.
	 */
	if (lha->directory || lha->compsize == 0)
		lha->end_of_entry = 1;

	FUNC37(lha->format_name, "lha -%c%c%c-",
	    lha->method[0], lha->method[1], lha->method[2]);
	a->archive.archive_format_name = lha->format_name;

	return (err);
}