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

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 unsigned char USIM_FSP_TEMPL_TAG ; 
 unsigned char USIM_PS_DO_TAG ; 
#define  USIM_TLV_DF_NAME 139 
#define  USIM_TLV_FILE_DESC 138 
#define  USIM_TLV_FILE_ID 137 
#define  USIM_TLV_FILE_SIZE 136 
#define  USIM_TLV_LIFE_CYCLE_STATUS 135 
#define  USIM_TLV_PIN_STATUS_TEMPLATE 134 
#define  USIM_TLV_PROPR_INFO 133 
#define  USIM_TLV_SECURITY_ATTR_8B 132 
#define  USIM_TLV_SECURITY_ATTR_8C 131 
#define  USIM_TLV_SECURITY_ATTR_AB 130 
#define  USIM_TLV_SHORT_FILE_ID 129 
#define  USIM_TLV_TOTAL_FILE_SIZE 128 
 int FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC3(unsigned char *buf, size_t buf_len,
				 int *ps_do, int *file_len)
{
	unsigned char *pos, *end;

	if (ps_do)
		*ps_do = -1;
	if (file_len)
		*file_len = -1;

	pos = buf;
	end = pos + buf_len;
	if (*pos != USIM_FSP_TEMPL_TAG) {
		FUNC2(MSG_DEBUG, "SCARD: file header did not "
			   "start with FSP template tag");
		return -1;
	}
	pos++;
	if (pos >= end)
		return -1;
	if (pos[0] < end - pos)
		end = pos + 1 + pos[0];
	pos++;
	FUNC1(MSG_DEBUG, "SCARD: file header FSP template",
		    pos, end - pos);

	while (end - pos >= 2) {
		unsigned char type, len;

		type = pos[0];
		len = pos[1];
		FUNC2(MSG_MSGDUMP, "SCARD: file header TLV 0x%02x len=%d",
			   type, len);
		pos += 2;

		if (len > (unsigned int) (end - pos))
			break;

		switch (type) {
		case USIM_TLV_FILE_DESC:
			FUNC1(MSG_MSGDUMP, "SCARD: File Descriptor TLV",
				    pos, len);
			break;
		case USIM_TLV_FILE_ID:
			FUNC1(MSG_MSGDUMP, "SCARD: File Identifier TLV",
				    pos, len);
			break;
		case USIM_TLV_DF_NAME:
			FUNC1(MSG_MSGDUMP, "SCARD: DF name (AID) TLV",
				    pos, len);
			break;
		case USIM_TLV_PROPR_INFO:
			FUNC1(MSG_MSGDUMP, "SCARD: Proprietary "
				    "information TLV", pos, len);
			break;
		case USIM_TLV_LIFE_CYCLE_STATUS:
			FUNC1(MSG_MSGDUMP, "SCARD: Life Cycle Status "
				    "Integer TLV", pos, len);
			break;
		case USIM_TLV_FILE_SIZE:
			FUNC1(MSG_MSGDUMP, "SCARD: File size TLV",
				    pos, len);
			if ((len == 1 || len == 2) && file_len) {
				if (len == 1)
					*file_len = (int) pos[0];
				else
					*file_len = FUNC0(pos);
				FUNC2(MSG_DEBUG, "SCARD: file_size=%d",
					   *file_len);
			}
			break;
		case USIM_TLV_TOTAL_FILE_SIZE:
			FUNC1(MSG_MSGDUMP, "SCARD: Total file size TLV",
				    pos, len);
			break;
		case USIM_TLV_PIN_STATUS_TEMPLATE:
			FUNC1(MSG_MSGDUMP, "SCARD: PIN Status Template "
				    "DO TLV", pos, len);
			if (len >= 2 && pos[0] == USIM_PS_DO_TAG &&
			    pos[1] >= 1 && ps_do) {
				FUNC2(MSG_DEBUG, "SCARD: PS_DO=0x%02x",
					   pos[2]);
				*ps_do = (int) pos[2];
			}
			break;
		case USIM_TLV_SHORT_FILE_ID:
			FUNC1(MSG_MSGDUMP, "SCARD: Short File "
				    "Identifier (SFI) TLV", pos, len);
			break;
		case USIM_TLV_SECURITY_ATTR_8B:
		case USIM_TLV_SECURITY_ATTR_8C:
		case USIM_TLV_SECURITY_ATTR_AB:
			FUNC1(MSG_MSGDUMP, "SCARD: Security attribute "
				    "TLV", pos, len);
			break;
		default:
			FUNC1(MSG_MSGDUMP, "SCARD: Unrecognized TLV",
				    pos, len);
			break;
		}

		pos += len;

		if (pos == end)
			return 0;
	}
	return -1;
}