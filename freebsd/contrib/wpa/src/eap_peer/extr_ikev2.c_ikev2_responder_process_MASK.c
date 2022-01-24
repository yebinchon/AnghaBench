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
typedef  int u32 ;
struct wpabuf {int dummy; } ;
struct ikev2_responder_data {scalar_t__ state; int /*<<< orphan*/  last_msg; int /*<<< orphan*/  i_sign_msg; int /*<<< orphan*/  r_spi; int /*<<< orphan*/  i_spi; scalar_t__ error_type; } ;
struct ikev2_payloads {int dummy; } ;
struct ikev2_hdr {int flags; int /*<<< orphan*/  next_payload; int /*<<< orphan*/  r_spi; int /*<<< orphan*/  i_spi; int /*<<< orphan*/  exchange_type; int /*<<< orphan*/  version; int /*<<< orphan*/  length; int /*<<< orphan*/  message_id; } ;

/* Variables and functions */
 int IKEV2_HDR_INITIATOR ; 
 int IKEV2_HDR_RESPONSE ; 
 int /*<<< orphan*/  IKEV2_SPI_LEN ; 
 int /*<<< orphan*/  IKEV2_VERSION ; 
 int /*<<< orphan*/  LAST_MSG_SA_AUTH ; 
 int /*<<< orphan*/  LAST_MSG_SA_INIT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 scalar_t__ NOTIFY ; 
 scalar_t__ SA_AUTH ; 
 scalar_t__ SA_INIT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ikev2_payloads*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (struct ikev2_responder_data*,struct ikev2_hdr const*,struct ikev2_payloads*) ; 
 scalar_t__ FUNC3 (struct ikev2_responder_data*,struct ikev2_hdr const*,struct ikev2_payloads*) ; 
 scalar_t__ FUNC4 (struct ikev2_responder_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct wpabuf const*) ; 
 int /*<<< orphan*/ * FUNC11 (struct wpabuf const*) ; 
 int FUNC12 (struct wpabuf const*) ; 

int FUNC13(struct ikev2_responder_data *data,
			    const struct wpabuf *buf)
{
	const struct ikev2_hdr *hdr;
	u32 length, message_id;
	const u8 *pos, *end;
	struct ikev2_payloads pl;

	FUNC7(MSG_MSGDUMP, "IKEV2: Received message (len %lu)",
		   (unsigned long) FUNC12(buf));

	if (FUNC12(buf) < sizeof(*hdr)) {
		FUNC7(MSG_INFO, "IKEV2: Too short frame to include HDR");
		return -1;
	}

	data->error_type = 0;
	hdr = (const struct ikev2_hdr *) FUNC10(buf);
	end = FUNC11(buf) + FUNC12(buf);
	message_id = FUNC0(hdr->message_id);
	length = FUNC0(hdr->length);

	FUNC6(MSG_DEBUG, "IKEV2:   IKE_SA Initiator's SPI",
		    hdr->i_spi, IKEV2_SPI_LEN);
	FUNC6(MSG_DEBUG, "IKEV2:   IKE_SA Responder's SPI",
		    hdr->r_spi, IKEV2_SPI_LEN);
	FUNC7(MSG_DEBUG, "IKEV2:   Next Payload: %u  Version: 0x%x  "
		   "Exchange Type: %u",
		   hdr->next_payload, hdr->version, hdr->exchange_type);
	FUNC7(MSG_DEBUG, "IKEV2:   Message ID: %u  Length: %u",
		   message_id, length);

	if (hdr->version != IKEV2_VERSION) {
		FUNC7(MSG_INFO, "IKEV2: Unsupported HDR version 0x%x "
			   "(expected 0x%x)", hdr->version, IKEV2_VERSION);
		return -1;
	}

	if (length != FUNC12(buf)) {
		FUNC7(MSG_INFO, "IKEV2: Invalid length (HDR: %lu != "
			   "RX: %lu)", (unsigned long) length,
			   (unsigned long) FUNC12(buf));
		return -1;
	}

	if (FUNC4(data, hdr->exchange_type, message_id) < 0)
		return -1;

	if ((hdr->flags & (IKEV2_HDR_INITIATOR | IKEV2_HDR_RESPONSE)) !=
	    IKEV2_HDR_INITIATOR) {
		FUNC7(MSG_INFO, "IKEV2: Unexpected Flags value 0x%x",
			   hdr->flags);
		return -1;
	}

	if (data->state != SA_INIT) {
		if (FUNC5(data->i_spi, hdr->i_spi, IKEV2_SPI_LEN) != 0) {
			FUNC7(MSG_INFO, "IKEV2: Unexpected IKE_SA "
				   "Initiator's SPI");
			return -1;
		}
		if (FUNC5(data->r_spi, hdr->r_spi, IKEV2_SPI_LEN) != 0) {
			FUNC7(MSG_INFO, "IKEV2: Unexpected IKE_SA "
				   "Responder's SPI");
			return -1;
		}
	}

	pos = (const u8 *) (hdr + 1);
	if (FUNC1(&pl, hdr->next_payload, pos, end) < 0)
		return -1;

	if (data->state == SA_INIT) {
		data->last_msg = LAST_MSG_SA_INIT;
		if (FUNC3(data, hdr, &pl) < 0) {
			if (data->state == NOTIFY)
				return 0;
			return -1;
		}
		FUNC9(data->i_sign_msg);
		data->i_sign_msg = FUNC8(buf);
	}

	if (data->state == SA_AUTH) {
		data->last_msg = LAST_MSG_SA_AUTH;
		if (FUNC2(data, hdr, &pl) < 0) {
			if (data->state == NOTIFY)
				return 0;
			return -1;
		}
	}

	return 0;
}