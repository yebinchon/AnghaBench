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
typedef  long u8 ;
struct ikev2_payloads {long const* sa; unsigned int sa_len; long const* ke; unsigned int ke_len; long const* idi; unsigned int idi_len; long const* idr; unsigned int idr_len; long const* cert; unsigned int cert_len; long const* auth; unsigned int auth_len; long const* nonce; unsigned int nonce_len; long const* encrypted; unsigned int encrypted_len; long const* notification; unsigned int notification_len; long encr_next_payload; } ;
struct ikev2_payload_hdr {long next_payload; int flags; int /*<<< orphan*/  payload_length; } ;

/* Variables and functions */
#define  IKEV2_PAYLOAD_AUTHENTICATION 136 
#define  IKEV2_PAYLOAD_CERTIFICATE 135 
#define  IKEV2_PAYLOAD_ENCRYPTED 134 
 int IKEV2_PAYLOAD_FLAGS_CRITICAL ; 
#define  IKEV2_PAYLOAD_IDi 133 
#define  IKEV2_PAYLOAD_IDr 132 
#define  IKEV2_PAYLOAD_KEY_EXCHANGE 131 
#define  IKEV2_PAYLOAD_NONCE 130 
#define  IKEV2_PAYLOAD_NOTIFICATION 129 
 long IKEV2_PAYLOAD_NO_NEXT_PAYLOAD ; 
#define  IKEV2_PAYLOAD_SA 128 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ikev2_payloads*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC3(struct ikev2_payloads *payloads,
			 u8 next_payload, const u8 *pos, const u8 *end)
{
	const struct ikev2_payload_hdr *phdr;

	FUNC1(payloads, 0, sizeof(*payloads));

	while (next_payload != IKEV2_PAYLOAD_NO_NEXT_PAYLOAD) {
		unsigned int plen, pdatalen, left;
		const u8 *pdata;
		FUNC2(MSG_DEBUG, "IKEV2: Processing payload %u",
			   next_payload);
		if (end < pos)
			return -1;
		left = end - pos;
		if (left < sizeof(*phdr)) {
			FUNC2(MSG_INFO, "IKEV2:   Too short message for "
				   "payload header (left=%ld)",
				   (long) (end - pos));
			return -1;
		}
		phdr = (const struct ikev2_payload_hdr *) pos;
		plen = FUNC0(phdr->payload_length);
		if (plen < sizeof(*phdr) || plen > left) {
			FUNC2(MSG_INFO, "IKEV2:   Invalid payload header "
				   "length %d", plen);
			return -1;
		}

		FUNC2(MSG_DEBUG, "IKEV2:   Next Payload: %u  Flags: 0x%x"
			   "  Payload Length: %u",
			   phdr->next_payload, phdr->flags, plen);

		pdata = (const u8 *) (phdr + 1);
		pdatalen = plen - sizeof(*phdr);

		switch (next_payload) {
		case IKEV2_PAYLOAD_SA:
			FUNC2(MSG_DEBUG, "IKEV2:   Payload: Security "
				   "Association");
			payloads->sa = pdata;
			payloads->sa_len = pdatalen;
			break;
		case IKEV2_PAYLOAD_KEY_EXCHANGE:
			FUNC2(MSG_DEBUG, "IKEV2:   Payload: Key "
				   "Exchange");
			payloads->ke = pdata;
			payloads->ke_len = pdatalen;
			break;
		case IKEV2_PAYLOAD_IDi:
			FUNC2(MSG_DEBUG, "IKEV2:   Payload: IDi");
			payloads->idi = pdata;
			payloads->idi_len = pdatalen;
			break;
		case IKEV2_PAYLOAD_IDr:
			FUNC2(MSG_DEBUG, "IKEV2:   Payload: IDr");
			payloads->idr = pdata;
			payloads->idr_len = pdatalen;
			break;
		case IKEV2_PAYLOAD_CERTIFICATE:
			FUNC2(MSG_DEBUG, "IKEV2:   Payload: Certificate");
			payloads->cert = pdata;
			payloads->cert_len = pdatalen;
			break;
		case IKEV2_PAYLOAD_AUTHENTICATION:
			FUNC2(MSG_DEBUG, "IKEV2:   Payload: "
				   "Authentication");
			payloads->auth = pdata;
			payloads->auth_len = pdatalen;
			break;
		case IKEV2_PAYLOAD_NONCE:
			FUNC2(MSG_DEBUG, "IKEV2:   Payload: Nonce");
			payloads->nonce = pdata;
			payloads->nonce_len = pdatalen;
			break;
		case IKEV2_PAYLOAD_ENCRYPTED:
			FUNC2(MSG_DEBUG, "IKEV2:   Payload: Encrypted");
			payloads->encrypted = pdata;
			payloads->encrypted_len = pdatalen;
			break;
		case IKEV2_PAYLOAD_NOTIFICATION:
			FUNC2(MSG_DEBUG, "IKEV2:   Payload: "
				   "Notification");
			payloads->notification = pdata;
			payloads->notification_len = pdatalen;
			break;
		default:
			if (phdr->flags & IKEV2_PAYLOAD_FLAGS_CRITICAL) {
				FUNC2(MSG_INFO, "IKEV2:   Unsupported "
					   "critical payload %u - reject the "
					   "entire message", next_payload);
				return -1;
			} else {
				FUNC2(MSG_DEBUG, "IKEV2:   Skipped "
					   "unsupported payload %u",
					   next_payload);
			}
		}

		if (next_payload == IKEV2_PAYLOAD_ENCRYPTED &&
		    pos + plen == end) {
			/*
			 * Next Payload in the case of Encrypted Payload is
			 * actually the payload type for the first embedded
			 * payload.
			 */
			payloads->encr_next_payload = phdr->next_payload;
			next_payload = IKEV2_PAYLOAD_NO_NEXT_PAYLOAD;
		} else
			next_payload = phdr->next_payload;

		pos += plen;
	}

	if (pos != end) {
		FUNC2(MSG_INFO, "IKEV2: Unexpected extra data after "
			   "payloads");
		return -1;
	}

	return 0;
}