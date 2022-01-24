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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct wpabuf {int dummy; } ;
struct wpa_bss {int ie_len; } ;

/* Variables and functions */
 int const WLAN_EID_VENDOR_SPECIFIC ; 
 scalar_t__ FUNC0 (int const*) ; 
 struct wpabuf* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*) ; 
 scalar_t__ FUNC3 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int const*,int const) ; 

struct wpabuf * FUNC5(const struct wpa_bss *bss,
					    u32 vendor_type)
{
	struct wpabuf *buf;
	const u8 *end, *pos;

	buf = FUNC1(bss->ie_len);
	if (buf == NULL)
		return NULL;

	pos = (const u8 *) (bss + 1);
	end = pos + bss->ie_len;

	while (end - pos > 1) {
		if (2 + pos[1] > end - pos)
			break;
		if (pos[0] == WLAN_EID_VENDOR_SPECIFIC && pos[1] >= 4 &&
		    vendor_type == FUNC0(&pos[2]))
			FUNC4(buf, pos + 2 + 4, pos[1] - 4);
		pos += 2 + pos[1];
	}

	if (FUNC3(buf) == 0) {
		FUNC2(buf);
		buf = NULL;
	}

	return buf;
}