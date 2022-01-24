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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct wpabuf {int dummy; } ;
struct eap_hdr {int /*<<< orphan*/  length; } ;
typedef  scalar_t__ const EapType ;

/* Variables and functions */
 scalar_t__ const EAP_TYPE_EXPANDED ; 
 int EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int FUNC0 (scalar_t__ const*) ; 
 scalar_t__ FUNC1 (scalar_t__ const*) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct eap_hdr* FUNC5 (struct wpabuf const*) ; 

const u8 * FUNC6(int vendor, EapType eap_type,
			    const struct wpabuf *msg, size_t *plen)
{
	const struct eap_hdr *hdr;
	const u8 *pos;
	size_t len;

	if (!FUNC3(msg, 1))
		return NULL;

	hdr = FUNC5(msg);
	len = FUNC2(hdr->length);
	pos = (const u8 *) (hdr + 1);

	if (*pos == EAP_TYPE_EXPANDED) {
		int exp_vendor;
		u32 exp_type;
		if (len < sizeof(*hdr) + 8) {
			FUNC4(MSG_INFO, "EAP: Invalid expanded EAP "
				   "length");
			return NULL;
		}
		pos++;
		exp_vendor = FUNC0(pos);
		pos += 3;
		exp_type = FUNC1(pos);
		pos += 4;
		if (exp_vendor != vendor || exp_type != (u32) eap_type) {
			FUNC4(MSG_INFO, "EAP: Invalid expanded frame "
				   "type");
			return NULL;
		}

		*plen = len - sizeof(*hdr) - 8;
		return pos;
	} else {
		if (vendor != EAP_VENDOR_IETF || *pos != eap_type) {
			FUNC4(MSG_INFO, "EAP: Invalid frame type");
			return NULL;
		}
		*plen = len - sizeof(*hdr) - 1;
		return pos + 1;
	}
}