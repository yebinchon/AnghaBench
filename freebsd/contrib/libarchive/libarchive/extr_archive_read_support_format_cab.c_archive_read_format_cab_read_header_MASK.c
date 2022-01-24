#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct cfheader {scalar_t__ file_index; scalar_t__ file_count; int major; int minor; struct cffolder* folder_array; int /*<<< orphan*/  folder_count; struct cffile* file_array; } ;
struct cffolder {char* compname; } ;
struct TYPE_8__ {int /*<<< orphan*/  s; } ;
struct cffile {int folder; int attr; scalar_t__ uncompressed_size; int /*<<< orphan*/  mtime; TYPE_2__ pathname; } ;
struct cab {int found_header; int end_of_archive; int end_of_entry; int end_of_entry_cleanup; int init_default_conversion; scalar_t__ entry_bytes_remaining; int /*<<< orphan*/  format_name; struct cffolder* entry_cffolder; scalar_t__ entry_offset; struct archive_string_conv* sconv_default; struct archive_string_conv* sconv; struct archive_string_conv* sconv_utf8; int /*<<< orphan*/ * entry_cfdata; struct cffile* entry_cffile; scalar_t__ entry_unconsumed; scalar_t__ entry_uncompressed_bytes_read; scalar_t__ entry_compressed_bytes_read; struct cfheader cfheader; } ;
struct archive_string_conv {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  archive_format_name; } ;
struct archive_read {TYPE_4__ archive; TYPE_1__* format; } ;
struct archive_entry {int dummy; } ;
struct TYPE_7__ {scalar_t__ data; } ;

/* Variables and functions */
 int AE_IFREG ; 
 int ARCHIVE_EOF ; 
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 int ATTR_NAME_IS_UTF ; 
 int ATTR_RDONLY ; 
 scalar_t__ ENOMEM ; 
 scalar_t__ FUNC0 (struct archive_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct archive_string_conv*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_string_conv*) ; 
 struct archive_string_conv* FUNC6 (TYPE_4__*,char*,int) ; 
 struct archive_string_conv* FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int FUNC9 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct cab*,struct archive_entry*) ; 
 int FUNC11 (struct archive_read*) ; 
 scalar_t__ errno ; 
#define  iFoldCONTINUED_FROM_PREV 130 
#define  iFoldCONTINUED_PREV_AND_NEXT 129 
#define  iFoldCONTINUED_TO_NEXT 128 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int,int,char*) ; 

__attribute__((used)) static int
FUNC13(struct archive_read *a,
    struct archive_entry *entry)
{
	struct cab *cab;
	struct cfheader *hd;
	struct cffolder *prev_folder;
	struct cffile *file;
	struct archive_string_conv *sconv;
	int err = ARCHIVE_OK, r;
	
	cab = (struct cab *)(a->format->data);
	if (cab->found_header == 0) {
		err = FUNC11(a); 
		if (err < ARCHIVE_WARN)
			return (err);
		/* We've found the header. */
		cab->found_header = 1;
	}
	hd = &cab->cfheader;

	if (hd->file_index >= hd->file_count) {
		cab->end_of_archive = 1;
		return (ARCHIVE_EOF);
	}
	file = &hd->file_array[hd->file_index++];

	cab->end_of_entry = 0;
	cab->end_of_entry_cleanup = 0;
	cab->entry_compressed_bytes_read = 0;
	cab->entry_uncompressed_bytes_read = 0;
	cab->entry_unconsumed = 0;
	cab->entry_cffile = file;

	/*
	 * Choose a proper folder.
	 */
	prev_folder = cab->entry_cffolder;
	switch (file->folder) {
	case iFoldCONTINUED_FROM_PREV:
	case iFoldCONTINUED_PREV_AND_NEXT:
		cab->entry_cffolder = &hd->folder_array[0];
		break;
	case iFoldCONTINUED_TO_NEXT:
		cab->entry_cffolder = &hd->folder_array[hd->folder_count-1];
		break;
	default:
		cab->entry_cffolder = &hd->folder_array[file->folder];
		break;
	}
	/* If a cffolder of this file is changed, reset a cfdata to read
	 * file contents from next cfdata. */
	if (prev_folder != cab->entry_cffolder)
		cab->entry_cfdata = NULL;

	/* If a pathname is UTF-8, prepare a string conversion object
	 * for UTF-8 and use it. */
	if (file->attr & ATTR_NAME_IS_UTF) {
		if (cab->sconv_utf8 == NULL) {
			cab->sconv_utf8 =
			    FUNC6(
				&(a->archive), "UTF-8", 1);
			if (cab->sconv_utf8 == NULL)
				return (ARCHIVE_FATAL);
		}
		sconv = cab->sconv_utf8;
	} else if (cab->sconv != NULL) {
		/* Choose the conversion specified by the option. */
		sconv = cab->sconv;
	} else {
		/* Choose the default conversion. */
		if (!cab->init_default_conversion) {
			cab->sconv_default =
			    FUNC7(
			      &(a->archive));
			cab->init_default_conversion = 1;
		}
		sconv = cab->sconv_default;
	}

	/*
	 * Set a default value and common data
	 */
	r = FUNC9(&(file->pathname), file->attr);
	if (FUNC0(entry, file->pathname.s,
	    FUNC8(&(file->pathname)), sconv) != 0) {
		if (errno == ENOMEM) {
			FUNC4(&a->archive, ENOMEM,
			    "Can't allocate memory for Pathname");
			return (ARCHIVE_FATAL);
		}
		FUNC4(&a->archive,
		    ARCHIVE_ERRNO_FILE_FORMAT,
		    "Pathname cannot be converted "
		    "from %s to current locale.",
		    FUNC5(sconv));
		err = ARCHIVE_WARN;
	}
	if (r < 0) {
		/* Convert a path separator '\' -> '/' */
		FUNC10(cab, entry);
	}

	FUNC3(entry, file->uncompressed_size);
	if (file->attr & ATTR_RDONLY)
		FUNC1(entry, AE_IFREG | 0555);
	else
		FUNC1(entry, AE_IFREG | 0666);
	FUNC2(entry, file->mtime, 0);

	cab->entry_bytes_remaining = file->uncompressed_size;
	cab->entry_offset = 0;
	/* We don't need compress data. */
	if (file->uncompressed_size == 0)
		cab->end_of_entry_cleanup = cab->end_of_entry = 1;

	/* Set up a more descriptive format name. */
	FUNC12(cab->format_name, "CAB %d.%d (%s)",
	    hd->major, hd->minor, cab->entry_cffolder->compname);
	a->archive.archive_format_name = cab->format_name;

	return (err);
}