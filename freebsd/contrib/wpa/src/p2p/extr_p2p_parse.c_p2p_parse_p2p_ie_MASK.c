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
typedef  int u16 ;
struct wpabuf {int dummy; } ;
struct p2p_message {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int FUNC0 (int const*) ; 
 scalar_t__ FUNC1 (int,int const*,int,struct p2p_message*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int* FUNC4 (struct wpabuf const*) ; 
 int FUNC5 (struct wpabuf const*) ; 

int FUNC6(const struct wpabuf *buf, struct p2p_message *msg)
{
	const u8 *pos = FUNC4(buf);
	const u8 *end = pos + FUNC5(buf);

	FUNC3(MSG_DEBUG, "P2P: Parsing P2P IE");

	while (pos < end) {
		u16 attr_len;
		u8 id;

		if (end - pos < 3) {
			FUNC3(MSG_DEBUG, "P2P: Invalid P2P attribute");
			return -1;
		}
		id = *pos++;
		attr_len = FUNC0(pos);
		pos += 2;
		FUNC3(MSG_DEBUG, "P2P: Attribute %d length %u",
			   id, attr_len);
		if (attr_len > end - pos) {
			FUNC3(MSG_DEBUG, "P2P: Attribute underflow "
				   "(len=%u left=%d)",
				   attr_len, (int) (end - pos));
			FUNC2(MSG_MSGDUMP, "P2P: Data", pos, end - pos);
			return -1;
		}
		if (FUNC1(id, pos, attr_len, msg))
			return -1;
		pos += attr_len;
	}

	return 0;
}