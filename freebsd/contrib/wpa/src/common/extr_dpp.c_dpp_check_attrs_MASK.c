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
typedef  int u16 ;

/* Variables and functions */
 int DPP_ATTR_WRAPPED_DATA ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC2(const u8 *buf, size_t len)
{
	const u8 *pos, *end;
	int wrapped_data = 0;

	pos = buf;
	end = buf + len;
	while (end - pos >= 4) {
		u16 id, alen;

		id = FUNC0(pos);
		pos += 2;
		alen = FUNC0(pos);
		pos += 2;
		FUNC1(MSG_MSGDUMP, "DPP: Attribute ID %04x len %u",
			   id, alen);
		if (alen > end - pos) {
			FUNC1(MSG_DEBUG,
				   "DPP: Truncated message - not enough room for the attribute - dropped");
			return -1;
		}
		if (wrapped_data) {
			FUNC1(MSG_DEBUG,
				   "DPP: An unexpected attribute included after the Wrapped Data attribute");
			return -1;
		}
		if (id == DPP_ATTR_WRAPPED_DATA)
			wrapped_data = 1;
		pos += alen;
	}

	if (end != pos) {
		FUNC1(MSG_DEBUG,
			   "DPP: Unexpected octets (%d) after the last attribute",
			   (int) (end - pos));
		return -1;
	}

	return 0;
}