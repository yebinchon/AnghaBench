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
struct pac_tlv_hdr {int /*<<< orphan*/  len; int /*<<< orphan*/  type; } ;
struct eap_fast_pac {int /*<<< orphan*/  pac_info; int /*<<< orphan*/  pac_opaque; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_fast_pac*,int,int /*<<< orphan*/ *,size_t,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC3(struct eap_fast_pac *entry,
				    u8 *pac, size_t pac_len)
{
	struct pac_tlv_hdr *hdr;
	u8 *pos;
	size_t left, len;
	int type, pac_key_found = 0;

	pos = pac;
	left = pac_len;

	while (left > sizeof(*hdr)) {
		hdr = (struct pac_tlv_hdr *) pos;
		type = FUNC0(hdr->type);
		len = FUNC0(hdr->len);
		pos += sizeof(*hdr);
		left -= sizeof(*hdr);
		if (len > left) {
			FUNC2(MSG_DEBUG, "EAP-FAST: PAC TLV overrun "
				   "(type=%d len=%lu left=%lu)",
				   type, (unsigned long) len,
				   (unsigned long) left);
			return -1;
		}

		FUNC1(entry, type, pos, len, &pac_key_found);

		pos += len;
		left -= len;
	}

	if (!pac_key_found || !entry->pac_opaque || !entry->pac_info) {
		FUNC2(MSG_DEBUG, "EAP-FAST: PAC TLV does not include "
			   "all the required fields");
		return -1;
	}

	return 0;
}