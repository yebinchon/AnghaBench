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
struct eap_fast_pac {size_t pac_opaque_len; size_t pac_info_len; int /*<<< orphan*/ * pac_info; int /*<<< orphan*/ * pac_opaque; int /*<<< orphan*/  pac_key; } ;

/* Variables and functions */
 size_t EAP_FAST_PAC_KEY_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
#define  PAC_TYPE_PAC_INFO 130 
#define  PAC_TYPE_PAC_KEY 129 
#define  PAC_TYPE_PAC_OPAQUE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC4(struct eap_fast_pac *entry, int type,
				   u8 *pos, size_t len, int *pac_key_found)
{
	switch (type & 0x7fff) {
	case PAC_TYPE_PAC_KEY:
		FUNC2(MSG_DEBUG, "EAP-FAST: PAC-Key", pos, len);
		if (len != EAP_FAST_PAC_KEY_LEN) {
			FUNC3(MSG_DEBUG, "EAP-FAST: Invalid PAC-Key "
				   "length %lu", (unsigned long) len);
			break;
		}
		*pac_key_found = 1;
		FUNC0(entry->pac_key, pos, len);
		break;
	case PAC_TYPE_PAC_OPAQUE:
		FUNC1(MSG_DEBUG, "EAP-FAST: PAC-Opaque", pos, len);
		entry->pac_opaque = pos;
		entry->pac_opaque_len = len;
		break;
	case PAC_TYPE_PAC_INFO:
		FUNC1(MSG_DEBUG, "EAP-FAST: PAC-Info", pos, len);
		entry->pac_info = pos;
		entry->pac_info_len = len;
		break;
	default:
		FUNC3(MSG_DEBUG, "EAP-FAST: Ignored unknown PAC type %d",
			   type);
		break;
	}
}