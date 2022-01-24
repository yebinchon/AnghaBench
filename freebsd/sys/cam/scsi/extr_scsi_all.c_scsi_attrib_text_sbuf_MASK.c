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
typedef  int uint32_t ;
struct scsi_mam_attribute_header {char* attribute; int /*<<< orphan*/  id; int /*<<< orphan*/  length; } ;
struct sbuf {int dummy; } ;

/* Variables and functions */
 int FUNC0 (size_t,int) ; 
 int SCSI_ATTR_OUTPUT_TEXT_MASK ; 
 int SCSI_ATTR_OUTPUT_TEXT_RAW ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*,char) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int,size_t,int) ; 

int
FUNC5(struct sbuf *sb, struct scsi_mam_attribute_header *hdr,
		      uint32_t valid_len, uint32_t flags, 
		      uint32_t output_flags, char *error_str,
		      int error_str_len)
{
	size_t avail_len;
	uint32_t field_size, print_size;
	int retval = 0;
	int esc_text = 1;

	avail_len = valid_len - sizeof(*hdr);
	field_size = FUNC3(hdr->length);
	print_size = FUNC0(avail_len, field_size);

	if ((output_flags & SCSI_ATTR_OUTPUT_TEXT_MASK) ==
	     SCSI_ATTR_OUTPUT_TEXT_RAW)
		esc_text = 0;

	if (print_size > 0) {
		uint32_t i;

		for (i = 0; i < print_size; i++) {
			if (hdr->attribute[i] == '\0')
				continue;
			else if (((unsigned char)hdr->attribute[i] < 0x80)
			      || (esc_text == 0))
				FUNC2(sb, hdr->attribute[i]);
			else
				FUNC1(sb, "%%%02x",
				    (unsigned char)hdr->attribute[i]);
		}
	} else if (avail_len < field_size) {
		/*
		 * We only report an error if the user didn't allocate
		 * enough space to hold the full value of this field.
		 */
		if (error_str != NULL) {
			FUNC4(error_str, error_str_len, "Available "
				 "length of attribute ID 0x%.4x %zu < field "
				 "length %u", FUNC3(hdr->id), avail_len,
				 field_size);
		}
		retval = 1;
	}

	return (retval);
}