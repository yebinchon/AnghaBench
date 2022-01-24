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
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  integ; int /*<<< orphan*/  encr; } ;
struct ikev2_responder_data {scalar_t__ peer_auth; struct wpabuf* r_sign_msg; int /*<<< orphan*/  state; int /*<<< orphan*/  keys; TYPE_1__ proposal; scalar_t__ IDr_len; int /*<<< orphan*/  r_nonce_len; int /*<<< orphan*/  r_nonce; int /*<<< orphan*/  r_spi; } ;
struct ikev2_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IKEV2_NONCE_MIN_LEN ; 
 int /*<<< orphan*/  IKEV2_PAYLOAD_ENCRYPTED ; 
 int /*<<< orphan*/  IKEV2_PAYLOAD_IDr ; 
 int /*<<< orphan*/  IKEV2_PAYLOAD_KEY_EXCHANGE ; 
 int /*<<< orphan*/  IKEV2_PAYLOAD_NONCE ; 
 int /*<<< orphan*/  IKEV2_PAYLOAD_NO_NEXT_PAYLOAD ; 
 int /*<<< orphan*/  IKEV2_PAYLOAD_SA ; 
 int /*<<< orphan*/  IKEV2_SPI_LEN ; 
 int /*<<< orphan*/  IKE_SA_INIT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 scalar_t__ PEER_AUTH_CERT ; 
 scalar_t__ PEER_AUTH_SECRET ; 
 int /*<<< orphan*/  SA_AUTH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct wpabuf*,struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ikev2_responder_data*,struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ikev2_responder_data*,struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ikev2_responder_data*,struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct ikev2_responder_data*,struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct ikev2_responder_data*,struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct ikev2_responder_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 struct wpabuf* FUNC12 (scalar_t__) ; 
 struct wpabuf* FUNC13 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC14 (struct wpabuf*) ; 

__attribute__((used)) static struct wpabuf * FUNC15(struct ikev2_responder_data *data)
{
	struct wpabuf *msg;

	/* build IKE_SA_INIT: HDR, SAr1, KEr, Nr, [CERTREQ], [SK{IDr}] */

	if (FUNC8(data->r_spi, IKEV2_SPI_LEN))
		return NULL;
	FUNC10(MSG_DEBUG, "IKEV2: IKE_SA Responder's SPI",
		    data->r_spi, IKEV2_SPI_LEN);

	data->r_nonce_len = IKEV2_NONCE_MIN_LEN;
	if (FUNC9(data->r_nonce, data->r_nonce_len))
		return NULL;
	FUNC10(MSG_DEBUG, "IKEV2: Nr", data->r_nonce, data->r_nonce_len);

	msg = FUNC12(sizeof(struct ikev2_hdr) + data->IDr_len + 1500);
	if (msg == NULL)
		return NULL;

	FUNC1(data, msg, IKE_SA_INIT, IKEV2_PAYLOAD_SA, 0);
	if (FUNC5(data, msg, IKEV2_PAYLOAD_KEY_EXCHANGE) ||
	    FUNC3(data, msg, IKEV2_PAYLOAD_NONCE) ||
	    FUNC4(data, msg, data->peer_auth == PEER_AUTH_SECRET ?
			   IKEV2_PAYLOAD_ENCRYPTED :
			   IKEV2_PAYLOAD_NO_NEXT_PAYLOAD)) {
		FUNC14(msg);
		return NULL;
	}

	if (FUNC6(data)) {
		FUNC14(msg);
		return NULL;
	}

	if (data->peer_auth == PEER_AUTH_CERT) {
		/* TODO: CERTREQ with SHA-1 hashes of Subject Public Key Info
		 * for trust agents */
	}

	if (data->peer_auth == PEER_AUTH_SECRET) {
		struct wpabuf *plain = FUNC12(data->IDr_len + 1000);
		if (plain == NULL) {
			FUNC14(msg);
			return NULL;
		}
		if (FUNC2(data, plain,
				    IKEV2_PAYLOAD_NO_NEXT_PAYLOAD) ||
		    FUNC0(data->proposal.encr,
					  data->proposal.integ,
					  &data->keys, 0, msg, plain,
					  IKEV2_PAYLOAD_IDr)) {
			FUNC14(plain);
			FUNC14(msg);
			return NULL;
		}
		FUNC14(plain);
	}

	FUNC7(msg);

	FUNC11(MSG_MSGDUMP, "IKEV2: Sending message (SA_INIT)", msg);

	data->state = SA_AUTH;

	FUNC14(data->r_sign_msg);
	data->r_sign_msg = FUNC13(msg);

	return msg;
}