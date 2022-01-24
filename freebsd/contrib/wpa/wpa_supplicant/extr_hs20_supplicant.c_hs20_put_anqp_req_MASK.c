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
typedef  int u32 ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANQP_VENDOR_SPECIFIC ; 
 int FUNC0 (int) ; 
 int HS20_ANQP_OUI_TYPE ; 
 int HS20_STYPE_ICON_REQUEST ; 
 int HS20_STYPE_NAI_HOME_REALM_QUERY ; 
 int HS20_STYPE_QUERY_LIST ; 
 int /*<<< orphan*/  OUI_WFA ; 
 int* FUNC1 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,int) ; 

void FUNC7(u32 stypes, const u8 *payload, size_t payload_len,
		       struct wpabuf *buf)
{
	u8 *len_pos;

	if (buf == NULL)
		return;

	len_pos = FUNC1(buf, ANQP_VENDOR_SPECIFIC);
	FUNC4(buf, OUI_WFA);
	FUNC6(buf, HS20_ANQP_OUI_TYPE);
	if (stypes == FUNC0(HS20_STYPE_NAI_HOME_REALM_QUERY)) {
		FUNC6(buf, HS20_STYPE_NAI_HOME_REALM_QUERY);
		FUNC6(buf, 0); /* Reserved */
		if (payload)
			FUNC5(buf, payload, payload_len);
	} else if (stypes == FUNC0(HS20_STYPE_ICON_REQUEST)) {
		FUNC6(buf, HS20_STYPE_ICON_REQUEST);
		FUNC6(buf, 0); /* Reserved */
		if (payload)
			FUNC5(buf, payload, payload_len);
	} else {
		u8 i;
		FUNC6(buf, HS20_STYPE_QUERY_LIST);
		FUNC6(buf, 0); /* Reserved */
		for (i = 0; i < 32; i++) {
			if (stypes & FUNC0(i))
				FUNC6(buf, i);
		}
	}
	FUNC2(buf, len_pos);

	FUNC3(buf);
}