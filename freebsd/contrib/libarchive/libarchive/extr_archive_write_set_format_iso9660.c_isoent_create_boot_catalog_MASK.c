#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  size; } ;
struct isofile {TYPE_2__ content; int /*<<< orphan*/  boot; int /*<<< orphan*/  entry; } ;
struct isoent {int virtual; } ;
struct TYPE_12__ {int /*<<< orphan*/  s; } ;
struct TYPE_8__ {int /*<<< orphan*/  s; } ;
struct TYPE_14__ {int /*<<< orphan*/  id; scalar_t__ system_type; TYPE_5__ boot_filename; void* media_type; TYPE_4__* boot; struct isoent* catalog; TYPE_1__ catalog_filename; } ;
struct TYPE_13__ {int boot_type; scalar_t__ publisher; } ;
struct iso9660 {int /*<<< orphan*/  publisher_identifier; TYPE_7__ el_torito; TYPE_6__ opt; int /*<<< orphan*/  birth_time; } ;
struct archive_write {int /*<<< orphan*/  archive; struct iso9660* format_data; } ;
struct archive_entry {int dummy; } ;
struct TYPE_11__ {TYPE_3__* file; } ;
struct TYPE_10__ {struct archive_entry* entry; } ;

/* Variables and functions */
 int AE_IFREG ; 
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FATAL ; 
 scalar_t__ ARCHIVE_OK ; 
 scalar_t__ ARCHIVE_WARN ; 
 int /*<<< orphan*/  BOOT_CATALOG ; 
 void* BOOT_MEDIA_1_2M_DISKETTE ; 
 void* BOOT_MEDIA_1_44M_DISKETTE ; 
 void* BOOT_MEDIA_2_88M_DISKETTE ; 
 void* BOOT_MEDIA_HARD_DISK ; 
 void* BOOT_MEDIA_NO_EMULATION ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FD_1_2M_SIZE ; 
 int /*<<< orphan*/  FD_1_44M_SIZE ; 
 int /*<<< orphan*/  FD_2_88M_SIZE ; 
 int /*<<< orphan*/  LOGICAL_BLOCK_SIZE ; 
#define  OPT_BOOT_TYPE_AUTO 131 
#define  OPT_BOOT_TYPE_FD 130 
#define  OPT_BOOT_TYPE_HARD_DISK 129 
#define  OPT_BOOT_TYPE_NO_EMU 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 struct isoent* FUNC14 (struct isofile*) ; 
 scalar_t__ FUNC15 (struct archive_write*,struct isoent**) ; 
 int /*<<< orphan*/  FUNC16 (struct iso9660*,struct isofile*) ; 
 int /*<<< orphan*/  FUNC17 (struct isofile*) ; 
 scalar_t__ FUNC18 (struct archive_write*,struct isofile*) ; 
 struct isofile* FUNC19 (struct archive_write*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC20(struct archive_write *a, struct isoent *rootent)
{
	struct iso9660 *iso9660 = a->format_data;
	struct isofile *file;
	struct isoent *isoent;
	struct archive_entry *entry;

	(void)rootent; /* UNUSED */
	/*
	 * Create the entry which is the "boot.catalog" file.
	 */
	file = FUNC19(a, NULL);
	if (file == NULL) {
		FUNC10(&a->archive, ENOMEM,
		    "Can't allocate memory");
		return (ARCHIVE_FATAL);
	}
	FUNC6(file->entry,
	    iso9660->el_torito.catalog_filename.s);
	FUNC7(file->entry, LOGICAL_BLOCK_SIZE);
	FUNC4(file->entry, iso9660->birth_time, 0);
	FUNC0(file->entry, iso9660->birth_time, 0);
	FUNC1(file->entry, iso9660->birth_time, 0);
	FUNC8(file->entry, FUNC13());
	FUNC2(file->entry, FUNC12());
	FUNC3(file->entry, AE_IFREG | 0444);
	FUNC5(file->entry, 1);

	if (FUNC18(a, file) < ARCHIVE_WARN) {
		FUNC17(file);
		return (ARCHIVE_FATAL);
	}
	file->boot = BOOT_CATALOG;
	file->content.size = LOGICAL_BLOCK_SIZE;
	FUNC16(iso9660, file);

	isoent = FUNC14(file);
	if (isoent == NULL) {
		FUNC10(&a->archive, ENOMEM,
		    "Can't allocate memory");
		return (ARCHIVE_FATAL);
	}
	isoent->virtual = 1;

	/* Add the "boot.catalog" entry into tree */
	if (FUNC15(a, &isoent) != ARCHIVE_OK)
		return (ARCHIVE_FATAL);

	iso9660->el_torito.catalog = isoent;
	/*
	 * Get a boot media type.
	 */
	switch (iso9660->opt.boot_type) {
	default:
	case OPT_BOOT_TYPE_AUTO:
		/* Try detecting a media type of the boot image. */
		entry = iso9660->el_torito.boot->file->entry;
		if (FUNC9(entry) == FD_1_2M_SIZE)
			iso9660->el_torito.media_type =
			    BOOT_MEDIA_1_2M_DISKETTE;
		else if (FUNC9(entry) == FD_1_44M_SIZE)
			iso9660->el_torito.media_type =
			    BOOT_MEDIA_1_44M_DISKETTE;
		else if (FUNC9(entry) == FD_2_88M_SIZE)
			iso9660->el_torito.media_type =
			    BOOT_MEDIA_2_88M_DISKETTE;
		else
			/* We cannot decide whether the boot image is
			 * hard-disk. */
			iso9660->el_torito.media_type =
			    BOOT_MEDIA_NO_EMULATION;
		break;
	case OPT_BOOT_TYPE_NO_EMU:
		iso9660->el_torito.media_type = BOOT_MEDIA_NO_EMULATION;
		break;
	case OPT_BOOT_TYPE_HARD_DISK:
		iso9660->el_torito.media_type = BOOT_MEDIA_HARD_DISK;
		break;
	case OPT_BOOT_TYPE_FD:
		entry = iso9660->el_torito.boot->file->entry;
		if (FUNC9(entry) <= FD_1_2M_SIZE)
			iso9660->el_torito.media_type =
			    BOOT_MEDIA_1_2M_DISKETTE;
		else if (FUNC9(entry) <= FD_1_44M_SIZE)
			iso9660->el_torito.media_type =
			    BOOT_MEDIA_1_44M_DISKETTE;
		else if (FUNC9(entry) <= FD_2_88M_SIZE)
			iso9660->el_torito.media_type =
			    BOOT_MEDIA_2_88M_DISKETTE;
		else {
			FUNC10(&a->archive, ARCHIVE_ERRNO_MISC,
			    "Boot image file(``%s'') size is too big "
			    "for fd type.",
			    iso9660->el_torito.boot_filename.s);
			return (ARCHIVE_FATAL);
		}
		break;
	}

	/*
	 * Get a system type.
	 * TODO: `El Torito' specification says "A copy of byte 5 from the
	 *       Partition Table found in the boot image".
	 */
	iso9660->el_torito.system_type = 0;

	/*
	 * Get an ID.
	 */
	if (iso9660->opt.publisher)
		FUNC11(&(iso9660->el_torito.id),
		    &(iso9660->publisher_identifier));


	return (ARCHIVE_OK);
}