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

/* Variables and functions */
 int /*<<< orphan*/  MBO_OUI_TYPE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  OUI_WFA ; 
 int /*<<< orphan*/  WLAN_EID_VENDOR_SPECIFIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t,size_t) ; 

size_t FUNC3(u8 *buf, size_t len, const u8 *attr, size_t attr_len)
{
	/*
	 * MBO IE requires 6 bytes without the attributes: EID (1), length (1),
	 * OUI (3), OUI type (1).
	 */
	if (len < 6 + attr_len) {
		FUNC2(MSG_DEBUG,
			   "MBO: Not enough room in buffer for MBO IE: buf len = %zu, attr_len = %zu",
			   len, attr_len);
		return 0;
	}

	*buf++ = WLAN_EID_VENDOR_SPECIFIC;
	*buf++ = attr_len + 4;
	FUNC0(buf, OUI_WFA);
	buf += 3;
	*buf++ = MBO_OUI_TYPE;
	FUNC1(buf, attr, attr_len);

	return 6 + attr_len;
}