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
 int /*<<< orphan*/  P2P_IE_VENDOR_TYPE ; 
 int WLAN_EID_VENDOR_SPECIFIC ; 
 struct wpabuf* FUNC0 (size_t) ; 
 int /*<<< orphan*/ * FUNC1 (struct wpabuf*) ; 
 size_t FUNC2 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC6(struct wpabuf *subelems)
{
	struct wpabuf *ie;
	const u8 *pos, *end;
	size_t len;

	if (subelems == NULL)
		return NULL;

	len = FUNC2(subelems) + 100;

	ie = FUNC0(len);
	if (ie == NULL)
		return NULL;

	pos = FUNC1(subelems);
	end = pos + FUNC2(subelems);

	while (end > pos) {
		size_t frag_len = end - pos;
		if (frag_len > 251)
			frag_len = 251;
		FUNC5(ie, WLAN_EID_VENDOR_SPECIFIC);
		FUNC5(ie, 4 + frag_len);
		FUNC3(ie, P2P_IE_VENDOR_TYPE);
		FUNC4(ie, pos, frag_len);
		pos += frag_len;
	}

	return ie;
}