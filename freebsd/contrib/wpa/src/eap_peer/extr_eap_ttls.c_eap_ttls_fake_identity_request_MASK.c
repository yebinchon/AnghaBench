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
struct eap_hdr {int /*<<< orphan*/  length; scalar_t__ identifier; int /*<<< orphan*/  code; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_REQUEST ; 
 int /*<<< orphan*/  EAP_TYPE_IDENTITY ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static u8 * FUNC3(void)
{
	struct eap_hdr *hdr;
	u8 *buf;

	FUNC2(MSG_DEBUG, "EAP-TTLS: empty data in beginning of "
		   "Phase 2 - use fake EAP-Request Identity");
	buf = FUNC1(sizeof(*hdr) + 1);
	if (buf == NULL) {
		FUNC2(MSG_WARNING, "EAP-TTLS: failed to allocate "
			   "memory for fake EAP-Identity Request");
		return NULL;
	}

	hdr = (struct eap_hdr *) buf;
	hdr->code = EAP_CODE_REQUEST;
	hdr->identifier = 0;
	hdr->length = FUNC0(sizeof(*hdr) + 1);
	buf[sizeof(*hdr)] = EAP_TYPE_IDENTITY;

	return buf;
}