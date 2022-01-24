#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct eap_tlv_hdr {void* length; void* tlv_type; } ;
struct eap_sm {int /*<<< orphan*/  ssl_ctx; } ;
struct eap_fast_pac {size_t pac_opaque_len; int /*<<< orphan*/  pac_opaque; } ;
struct TYPE_2__ {int /*<<< orphan*/  conn; } ;
struct eap_fast_data {TYPE_1__ ssl; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 size_t PAC_TYPE_PAC_OPAQUE ; 
 int /*<<< orphan*/  TLS_EXT_PAC_OPAQUE ; 
 void* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_tlv_hdr*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct eap_sm *sm,
				   struct eap_fast_data *data,
				   struct eap_fast_pac *pac)
{
	u8 *tlv;
	size_t tlv_len, olen;
	struct eap_tlv_hdr *ehdr;

	olen = pac->pac_opaque_len;
	tlv_len = sizeof(*ehdr) + olen;
	tlv = FUNC2(tlv_len);
	if (tlv) {
		ehdr = (struct eap_tlv_hdr *) tlv;
		ehdr->tlv_type = FUNC0(PAC_TYPE_PAC_OPAQUE);
		ehdr->length = FUNC0(olen);
		FUNC3(ehdr + 1, pac->pac_opaque, olen);
	}
	if (tlv == NULL ||
	    FUNC4(sm->ssl_ctx, data->ssl.conn,
					    TLS_EXT_PAC_OPAQUE,
					    tlv, tlv_len) < 0) {
		FUNC5(MSG_DEBUG, "EAP-FAST: Failed to add PAC-Opaque TLS "
			   "extension");
		FUNC1(tlv);
		return -1;
	}
	FUNC1(tlv);

	return 0;
}