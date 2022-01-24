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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct wps_parse_attr {int num_vendor_ext; int* vendor_ext_len; int /*<<< orphan*/  const** vendor_ext; } ;

/* Variables and functions */
 int MAX_WPS_PARSE_VENDOR_EXT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int WPS_MAX_VENDOR_EXT_LEN ; 
#define  WPS_VENDOR_ID_WFA 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct wps_parse_attr*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC3(struct wps_parse_attr *attr, const u8 *pos,
				u16 len)
{
	u32 vendor_id;

	if (len < 3) {
		FUNC1(MSG_DEBUG, "WPS: Skip invalid Vendor Extension");
		return 0;
	}

	vendor_id = FUNC0(pos);
	switch (vendor_id) {
	case WPS_VENDOR_ID_WFA:
		return FUNC2(attr, pos + 3, len - 3);
	}

	/* Handle unknown vendor extensions */

	FUNC1(MSG_MSGDUMP, "WPS: Unknown Vendor Extension (Vendor ID %u)",
		   vendor_id);

	if (len > WPS_MAX_VENDOR_EXT_LEN) {
		FUNC1(MSG_DEBUG, "WPS: Too long Vendor Extension (%u)",
			   len);
		return -1;
	}

	if (attr->num_vendor_ext >= MAX_WPS_PARSE_VENDOR_EXT) {
		FUNC1(MSG_DEBUG, "WPS: Skipped Vendor Extension "
			   "attribute (max %d vendor extensions)",
			   MAX_WPS_PARSE_VENDOR_EXT);
		return -1;
	}
	attr->vendor_ext[attr->num_vendor_ext] = pos;
	attr->vendor_ext_len[attr->num_vendor_ext] = len;
	attr->num_vendor_ext++;

	return 0;
}