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
typedef  size_t u32 ;
typedef  int u16 ;
struct eap_teap_data {int received_version; int teap_version; int provisioning; scalar_t__ provisioning_allowed; scalar_t__ current_pac; scalar_t__ resuming; int /*<<< orphan*/  server_outer_tlvs; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 int EAP_TEAP_FLAGS_OUTER_TLV_LEN ; 
 int EAP_TLS_VERSION_MASK ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int TEAP_TLV_AUTHORITY_ID ; 
 int TEAP_TLV_TYPE_MASK ; 
 int FUNC0 (int const*) ; 
 size_t FUNC1 (int const*) ; 
 scalar_t__ FUNC2 (struct eap_sm*,struct eap_teap_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_teap_data*,int const*,size_t) ; 
 scalar_t__ FUNC4 (struct eap_sm*,struct eap_teap_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct eap_sm *sm,
				  struct eap_teap_data *data, u8 flags,
				  const u8 *pos, size_t left)
{
	const u8 *a_id = NULL;
	size_t a_id_len = 0;

	/* TODO: Support (mostly theoretical) case of TEAP/Start request being
	 * fragmented */

	/* EAP-TEAP version negotiation (RFC 7170, Section 3.2) */
	data->received_version = flags & EAP_TLS_VERSION_MASK;
	FUNC6(MSG_DEBUG, "EAP-TEAP: Start (server ver=%u, own ver=%u)",
		   data->received_version, data->teap_version);
	if (data->received_version < 1) {
		/* Version 1 was the first defined version, so reject 0 */
		FUNC6(MSG_INFO,
			   "EAP-TEAP: Server used unknown TEAP version %u",
			   data->received_version);
		return -1;
	}
	if (data->received_version < data->teap_version)
		data->teap_version = data->received_version;
	FUNC6(MSG_DEBUG, "EAP-TEAP: Using TEAP version %d",
		   data->teap_version);
	FUNC5(MSG_MSGDUMP, "EAP-TEAP: Start message payload", pos, left);

	/* Parse Authority-ID TLV from Outer TLVs, if present */
	if (flags & EAP_TEAP_FLAGS_OUTER_TLV_LEN) {
		const u8 *outer_pos, *outer_end;
		u32 outer_tlv_len;

		if (left < 4) {
			FUNC6(MSG_INFO,
				   "EAP-TEAP: Not enough room for the Outer TLV Length field");
			return -1;
		}

		outer_tlv_len = FUNC1(pos);
		pos += 4;
		left -= 4;

		if (outer_tlv_len > left) {
			FUNC6(MSG_INFO,
				   "EAP-TEAP: Truncated Outer TLVs field (Outer TLV Length: %u; remaining buffer: %u)",
				   outer_tlv_len, (unsigned int) left);
			return -1;
		}

		outer_pos = pos + left - outer_tlv_len;
		outer_end = outer_pos + outer_tlv_len;
		FUNC5(MSG_MSGDUMP, "EAP-TEAP: Start message Outer TLVs",
			    outer_pos, outer_tlv_len);
		FUNC8(data->server_outer_tlvs);
		data->server_outer_tlvs = FUNC7(outer_pos,
							    outer_tlv_len);
		if (!data->server_outer_tlvs)
			return -1;
		left -= outer_tlv_len;
		if (left > 0) {
			FUNC5(MSG_INFO,
				    "EAP-TEAP: Unexpected TLS Data in Start message",
				    pos, left);
			return -1;
		}

		while (outer_pos < outer_end) {
			u16 tlv_type, tlv_len;

			if (outer_end - outer_pos < 4) {
				FUNC6(MSG_INFO,
					   "EAP-TEAP: Truncated Outer TLV header");
				return -1;
			}
			tlv_type = FUNC0(outer_pos);
			outer_pos += 2;
			tlv_len = FUNC0(outer_pos);
			outer_pos += 2;
			/* Outer TLVs are required to be optional, so no need to
			 * check the M flag */
			tlv_type &= TEAP_TLV_TYPE_MASK;
			FUNC6(MSG_DEBUG,
				   "EAP-TEAP: Outer TLV: Type=%u Length=%u",
				   tlv_type, tlv_len);
			if (outer_end - outer_pos < tlv_len) {
				FUNC6(MSG_INFO,
					   "EAP-TEAP: Truncated Outer TLV (Type %u)",
					   tlv_type);
				return -1;
			}
			if (tlv_type == TEAP_TLV_AUTHORITY_ID) {
				FUNC5(MSG_DEBUG, "EAP-TEAP: Authority-ID",
					    outer_pos, tlv_len);
				if (a_id) {
					FUNC6(MSG_INFO,
						   "EAP-TEAP: Multiple Authority-ID TLVs in TEAP/Start");
					return -1;
				}
				a_id = outer_pos;
				a_id_len = tlv_len;
			} else {
				FUNC6(MSG_DEBUG,
					   "EAP-TEAP: Ignore unknown Outer TLV (Type %u)",
					   tlv_type);
			}
			outer_pos += tlv_len;
		}
	} else if (left > 0) {
		FUNC5(MSG_INFO,
			    "EAP-TEAP: Unexpected TLS Data in Start message",
			    pos, left);
		return -1;
	}

	FUNC3(data, a_id, a_id_len);

	if (data->resuming && data->current_pac) {
		FUNC6(MSG_DEBUG,
			   "EAP-TEAP: Trying to resume session - do not add PAC-Opaque to TLS ClientHello");
		if (FUNC2(sm, data) < 0)
			return -1;
	} else if (data->current_pac) {
		/*
		 * PAC found for the A-ID and we are not resuming an old
		 * session, so add PAC-Opaque extension to ClientHello.
		 */
		if (FUNC4(sm, data, data->current_pac) < 0)
			return -1;
	} else if (data->provisioning_allowed) {
		FUNC6(MSG_DEBUG,
			   "EAP-TEAP: No PAC found - starting provisioning");
		if (FUNC2(sm, data) < 0)
			return -1;
		data->provisioning = 1;
	}

	return 0;
}