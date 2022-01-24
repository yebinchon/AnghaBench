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
struct wpabuf {int dummy; } ;
struct eap_fast_tlv_parse {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int FUNC0 (int*) ; 
 int FUNC1 (struct eap_fast_tlv_parse*,int,int*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_fast_tlv_parse*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (struct wpabuf*) ; 
 int* FUNC5 (struct wpabuf*) ; 

__attribute__((used)) static int FUNC6(struct wpabuf *data,
			       struct eap_fast_tlv_parse *tlv)
{
	int mandatory, tlv_type, res;
	size_t len;
	u8 *pos, *end;

	FUNC2(tlv, 0, sizeof(*tlv));

	pos = FUNC5(data);
	end = pos + FUNC4(data);
	while (end - pos > 4) {
		mandatory = pos[0] & 0x80;
		tlv_type = FUNC0(pos) & 0x3fff;
		pos += 2;
		len = FUNC0(pos);
		pos += 2;
		if (len > (size_t) (end - pos)) {
			FUNC3(MSG_INFO, "EAP-FAST: TLV overflow");
			return -1;
		}
		FUNC3(MSG_DEBUG, "EAP-FAST: Received Phase 2: "
			   "TLV type %d length %u%s",
			   tlv_type, (unsigned int) len,
			   mandatory ? " (mandatory)" : "");

		res = FUNC1(tlv, tlv_type, pos, len);
		if (res == -2)
			break;
		if (res < 0) {
			if (mandatory) {
				FUNC3(MSG_DEBUG, "EAP-FAST: Nak unknown "
					   "mandatory TLV type %d", tlv_type);
				/* TODO: generate Nak TLV */
				break;
			} else {
				FUNC3(MSG_DEBUG, "EAP-FAST: Ignored "
					   "unknown optional TLV type %d",
					   tlv_type);
			}
		}

		pos += len;
	}

	return 0;
}