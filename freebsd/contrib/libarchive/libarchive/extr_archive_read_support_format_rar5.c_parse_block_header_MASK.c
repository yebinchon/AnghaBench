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
typedef  int uint8_t ;
struct compressed_block_header {int block_cksum; scalar_t__ block_flags_u8; } ;
struct archive_read {int /*<<< orphan*/  archive; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int FUNC0 (int const*) ; 
 int FUNC1 (int const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC3 (struct compressed_block_header*) ; 
 int /*<<< orphan*/  FUNC4 (struct compressed_block_header*,int const*,int) ; 

__attribute__((used)) static int FUNC5(struct archive_read* a, const uint8_t* p,
    ssize_t* block_size, struct compressed_block_header* hdr)
{
	FUNC4(hdr, p, sizeof(struct compressed_block_header));

	if(FUNC3(hdr) > 2) {
		FUNC2(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "Unsupported block header size (was %d, max is 2)",
		    FUNC3(hdr));
		return ARCHIVE_FATAL;
	}

	/* This should probably use bit reader interface in order to be more
	 * future-proof. */
	*block_size = 0;
	switch(FUNC3(hdr)) {
		/* 1-byte block size */
		case 0:
			*block_size = *(const uint8_t*) &p[2];
			break;

		/* 2-byte block size */
		case 1:
			*block_size = FUNC0(&p[2]);
			break;

		/* 3-byte block size */
		case 2:
			*block_size = FUNC1(&p[2]);
			*block_size &= 0x00FFFFFF;
			break;

		/* Other block sizes are not supported. This case is not
		 * reached, because we have an 'if' guard before the switch
		 * that makes sure of it. */
		default:
			return ARCHIVE_FATAL;
	}

	/* Verify the block header checksum. 0x5A is a magic value and is
	 * always * constant. */
	uint8_t calculated_cksum = 0x5A
	    ^ (uint8_t) hdr->block_flags_u8
	    ^ (uint8_t) *block_size
	    ^ (uint8_t) (*block_size >> 8)
	    ^ (uint8_t) (*block_size >> 16);

	if(calculated_cksum != hdr->block_cksum) {
		FUNC2(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
		    "Block checksum error: got 0x%x, expected 0x%x",
		    hdr->block_cksum, calculated_cksum);

		return ARCHIVE_FATAL;
	}

	return ARCHIVE_OK;
}