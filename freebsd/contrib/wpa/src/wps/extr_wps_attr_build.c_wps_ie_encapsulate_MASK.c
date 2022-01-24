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
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int WLAN_EID_VENDOR_SPECIFIC ; 
 int /*<<< orphan*/  WPS_DEV_OUI_WFA ; 
 struct wpabuf* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*) ; 
 int /*<<< orphan*/ * FUNC2 (struct wpabuf*) ; 
 int FUNC3 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,int) ; 

struct wpabuf * FUNC7(struct wpabuf *data)
{
	struct wpabuf *ie;
	const u8 *pos, *end;

	ie = FUNC0(FUNC3(data) + 100);
	if (ie == NULL) {
		FUNC1(data);
		return NULL;
	}

	pos = FUNC2(data);
	end = pos + FUNC3(data);

	while (end > pos) {
		size_t frag_len = end - pos;
		if (frag_len > 251)
			frag_len = 251;
		FUNC6(ie, WLAN_EID_VENDOR_SPECIFIC);
		FUNC6(ie, 4 + frag_len);
		FUNC4(ie, WPS_DEV_OUI_WFA);
		FUNC5(ie, pos, frag_len);
		pos += frag_len;
	}

	FUNC1(data);

	return ie;
}