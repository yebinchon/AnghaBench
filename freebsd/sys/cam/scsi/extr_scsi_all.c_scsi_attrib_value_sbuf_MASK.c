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
typedef  int /*<<< orphan*/  uint32_t ;
struct scsi_mam_attribute_header {int byte2; int /*<<< orphan*/  length; } ;
struct sbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCSI_ATTR_FLAG_NONE ; 
#define  SMA_FORMAT_ASCII 130 
#define  SMA_FORMAT_BINARY 129 
 int SMA_FORMAT_MASK ; 
#define  SMA_FORMAT_TEXT 128 
 int /*<<< orphan*/  FUNC0 (struct sbuf*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sbuf*,struct scsi_mam_attribute_header*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 int FUNC3 (struct sbuf*,struct scsi_mam_attribute_header*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 int FUNC4 (struct sbuf*,struct scsi_mam_attribute_header*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 int FUNC5 (struct sbuf*,struct scsi_mam_attribute_header*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t,char*,int) ; 

int
FUNC7(struct sbuf *sb, uint32_t valid_len,
   struct scsi_mam_attribute_header *hdr, uint32_t output_flags,
   char *error_str, size_t error_str_len)
{
	int retval;

	switch (hdr->byte2 & SMA_FORMAT_MASK) {
	case SMA_FORMAT_ASCII:
		retval = FUNC2(sb, hdr, valid_len,
		    SCSI_ATTR_FLAG_NONE, output_flags, error_str,error_str_len);
		break;
	case SMA_FORMAT_BINARY:
		if (FUNC1(hdr->length) <= 8)
			retval = FUNC4(sb, hdr, valid_len,
			    SCSI_ATTR_FLAG_NONE, output_flags, error_str,
			    error_str_len);
		else
			retval = FUNC3(sb, hdr, valid_len,
			    SCSI_ATTR_FLAG_NONE, output_flags, error_str,
			    error_str_len);
		break;
	case SMA_FORMAT_TEXT:
		retval = FUNC5(sb, hdr, valid_len,
		    SCSI_ATTR_FLAG_NONE, output_flags, error_str,
		    error_str_len);
		break;
	default:
		if (error_str != NULL) {
			FUNC6(error_str, error_str_len, "Unknown attribute "
			    "format 0x%x", hdr->byte2 & SMA_FORMAT_MASK);
		}
		retval = 1;
		goto bailout;
		break; /*NOTREACHED*/
	}

	FUNC0(sb);

bailout:

	return (retval);
}