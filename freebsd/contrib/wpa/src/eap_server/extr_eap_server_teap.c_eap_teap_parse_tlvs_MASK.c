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
struct eap_teap_tlv_parse {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int FUNC0 (int*) ; 
 int FUNC1 (struct eap_teap_tlv_parse*,int,int*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_teap_tlv_parse*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (struct wpabuf*) ; 
 int* FUNC6 (struct wpabuf*) ; 

__attribute__((used)) static int FUNC7(struct wpabuf *data,
			       struct eap_teap_tlv_parse *tlv)
{
	u16 tlv_type;
	int mandatory, res;
	size_t len;
	u8 *pos, *end;

	FUNC3(tlv, 0, sizeof(*tlv));

	pos = FUNC6(data);
	end = pos + FUNC5(data);
	while (end - pos > 4) {
		mandatory = pos[0] & 0x80;
		tlv_type = FUNC0(pos) & 0x3fff;
		pos += 2;
		len = FUNC0(pos);
		pos += 2;
		if (len > (size_t) (end - pos)) {
			FUNC4(MSG_INFO, "EAP-TEAP: TLV overflow");
			return -1;
		}
		FUNC4(MSG_DEBUG,
			   "EAP-TEAP: Received Phase 2: TLV type %u (%s) length %u%s",
			   tlv_type, FUNC2(tlv_type),
			   (unsigned int) len,
			   mandatory ? " (mandatory)" : "");

		res = FUNC1(tlv, tlv_type, pos, len);
		if (res == -2)
			break;
		if (res < 0) {
			if (mandatory) {
				FUNC4(MSG_DEBUG,
					   "EAP-TEAP: NAK unknown mandatory TLV type %u",
					   tlv_type);
				/* TODO: generate NAK TLV */
				break;
			}

			FUNC4(MSG_DEBUG,
				   "EAP-TEAP: Ignore unknown optional TLV type %u",
				   tlv_type);
		}

		pos += len;
	}

	return 0;
}