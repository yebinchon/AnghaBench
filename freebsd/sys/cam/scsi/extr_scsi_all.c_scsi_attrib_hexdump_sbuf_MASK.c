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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct scsi_mam_attribute_header {int /*<<< orphan*/ * attribute; int /*<<< orphan*/  length; } ;
struct sbuf {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(struct sbuf *sb, struct scsi_mam_attribute_header *hdr,
			 uint32_t valid_len, uint32_t flags,
			 uint32_t output_flags, char *error_str,
			 int error_str_len)
{
	uint32_t field_size;
	ssize_t avail_len;
	uint32_t print_len;
	uint8_t *num_ptr;
	int retval = 0;

	field_size = FUNC3(hdr->length);
	avail_len = valid_len - sizeof(*hdr);
	print_len = FUNC0(avail_len, field_size);
	num_ptr = hdr->attribute;

	if (print_len > 0) {
		FUNC2(sb, "\n");
		FUNC1(sb, num_ptr, print_len, NULL, 0);
	}

	return (retval);
}