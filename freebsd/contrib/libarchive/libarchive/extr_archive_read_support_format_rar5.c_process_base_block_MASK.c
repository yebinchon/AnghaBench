#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_6__ {int endarc; int /*<<< orphan*/  vol_no; int /*<<< orphan*/  volume; } ;
struct TYPE_5__ {int /*<<< orphan*/  expected_vol_no; } ;
struct TYPE_4__ {int split_after; int split_before; int size; int last_header_id; } ;
struct rar5 {TYPE_3__ main; TYPE_2__ vol; TYPE_1__ generic; } ;
struct archive_read {int /*<<< orphan*/  archive; } ;
struct archive_entry {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_EOF ; 
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int /*<<< orphan*/  ARCHIVE_ERRNO_PROGRAMMER ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_RETRY ; 
 size_t HFL_SKIP_IF_UNKNOWN ; 
 size_t HFL_SPLIT_AFTER ; 
 size_t HFL_SPLIT_BEFORE ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct archive_read*,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 struct rar5* FUNC3 (struct archive_read*) ; 
 int FUNC4 (struct archive_read*,struct rar5*,struct archive_entry*,size_t) ; 
 int FUNC5 (struct archive_read*,struct rar5*,struct archive_entry*,size_t) ; 
 int FUNC6 (struct archive_read*,struct rar5*,struct archive_entry*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_read*,size_t,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_read*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_read*,size_t*,size_t*) ; 
 int FUNC10 (struct archive_read*) ; 
 int FUNC11 (struct archive_read*) ; 

__attribute__((used)) static int FUNC12(struct archive_read* a,
    struct archive_entry* entry)
{
	struct rar5* rar = FUNC3(a);
	uint32_t hdr_crc, computed_crc;
	size_t raw_hdr_size = 0, hdr_size_len, hdr_size;
	size_t header_id = 0;
	size_t header_flags = 0;
	const uint8_t* p;
	int ret;

	/* Skip any unprocessed data for this file. */
	ret = FUNC11(a);
	if(ret != ARCHIVE_OK)
		return ret;

	/* Read the expected CRC32 checksum. */
	if(!FUNC8(a, &hdr_crc)) {
		return ARCHIVE_EOF;
	}

	/* Read header size. */
	if(!FUNC9(a, &raw_hdr_size, &hdr_size_len)) {
		return ARCHIVE_EOF;
	}

	/* Sanity check, maximum header size for RAR5 is 2MB. */
	if(raw_hdr_size > (2 * 1024 * 1024)) {
		FUNC0(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "Base block header is too large");

		return ARCHIVE_FATAL;
	}

	hdr_size = raw_hdr_size + hdr_size_len;

	/* Read the whole header data into memory, maximum memory use here is
	 * 2MB. */
	if(!FUNC7(a, hdr_size, &p)) {
		return ARCHIVE_EOF;
	}

	/* Verify the CRC32 of the header data. */
	computed_crc = (uint32_t) FUNC2(0, p, (int) hdr_size);
	if(computed_crc != hdr_crc) {
		FUNC0(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "Header CRC error");

		return ARCHIVE_FATAL;
	}

	/* If the checksum is OK, we proceed with parsing. */
	if(ARCHIVE_OK != FUNC1(a, hdr_size_len)) {
		return ARCHIVE_EOF;
	}

	if(!FUNC9(a, &header_id, NULL))
		return ARCHIVE_EOF;

	if(!FUNC9(a, &header_flags, NULL))
		return ARCHIVE_EOF;

	rar->generic.split_after = (header_flags & HFL_SPLIT_AFTER) > 0;
	rar->generic.split_before = (header_flags & HFL_SPLIT_BEFORE) > 0;
	rar->generic.size = (int)hdr_size;
	rar->generic.last_header_id = (int)header_id;
	rar->main.endarc = 0;

	/* Those are possible header ids in RARv5. */
	enum HEADER_TYPE {
		HEAD_MARK    = 0x00, HEAD_MAIN  = 0x01, HEAD_FILE   = 0x02,
		HEAD_SERVICE = 0x03, HEAD_CRYPT = 0x04, HEAD_ENDARC = 0x05,
		HEAD_UNKNOWN = 0xff,
	};

	switch(header_id) {
		case HEAD_MAIN:
			ret = FUNC5(a, rar, entry, header_flags);

			/* Main header doesn't have any files in it, so it's
			 * pointless to return to the caller. Retry to next
			 * header, which should be HEAD_FILE/HEAD_SERVICE. */
			if(ret == ARCHIVE_OK)
				return ARCHIVE_RETRY;

			return ret;
		case HEAD_SERVICE:
			ret = FUNC6(a, rar, entry, header_flags);
			return ret;
		case HEAD_FILE:
			ret = FUNC4(a, rar, entry, header_flags);
			return ret;
		case HEAD_CRYPT:
			FUNC0(&a->archive,
			    ARCHIVE_ERRNO_FILE_FORMAT,
			    "Encryption is not supported");
			return ARCHIVE_FATAL;
		case HEAD_ENDARC:
			rar->main.endarc = 1;

			/* After encountering an end of file marker, we need
			 * to take into consideration if this archive is
			 * continued in another file (i.e. is it part01.rar:
			 * is there a part02.rar?) */
			if(rar->main.volume) {
				/* In case there is part02.rar, position the
				 * read pointer in a proper place, so we can
				 * resume parsing. */
				ret = FUNC10(a);
				if(ret == ARCHIVE_FATAL) {
					return ARCHIVE_EOF;
				} else {
					if(rar->vol.expected_vol_no ==
					    UINT_MAX) {
						FUNC0(&a->archive,
						    ARCHIVE_ERRNO_FILE_FORMAT,
						    "Header error");
							return ARCHIVE_FATAL;
					}

					rar->vol.expected_vol_no =
					    rar->main.vol_no + 1;
					return ARCHIVE_OK;
				}
			} else {
				return ARCHIVE_EOF;
			}
		case HEAD_MARK:
			return ARCHIVE_EOF;
		default:
			if((header_flags & HFL_SKIP_IF_UNKNOWN) == 0) {
				FUNC0(&a->archive,
				    ARCHIVE_ERRNO_FILE_FORMAT,
				    "Header type error");
				return ARCHIVE_FATAL;
			} else {
				/* If the block is marked as 'skip if unknown',
				 * do as the flag says: skip the block
				 * instead on failing on it. */
				return ARCHIVE_RETRY;
			}
	}

#if !defined WIN32
	// Not reached.
	FUNC0(&a->archive, ARCHIVE_ERRNO_PROGRAMMER,
	    "Internal unpacker error");
	return ARCHIVE_FATAL;
#endif
}