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
struct wpabuf {int dummy; } ;
struct ikev2_initiator_data {struct wpabuf* i_sign_msg; int /*<<< orphan*/  i_nonce_len; int /*<<< orphan*/  i_nonce; int /*<<< orphan*/  i_spi; } ;
struct ikev2_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IKEV2_NONCE_MIN_LEN ; 
 int /*<<< orphan*/  IKEV2_PAYLOAD_KEY_EXCHANGE ; 
 int /*<<< orphan*/  IKEV2_PAYLOAD_NONCE ; 
 int /*<<< orphan*/  IKEV2_PAYLOAD_NO_NEXT_PAYLOAD ; 
 int /*<<< orphan*/  IKEV2_PAYLOAD_SA ; 
 int /*<<< orphan*/  IKEV2_SPI_LEN ; 
 int /*<<< orphan*/  IKE_SA_INIT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  FUNC0 (struct ikev2_initiator_data*,struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ikev2_initiator_data*,struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ikev2_initiator_data*,struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ikev2_initiator_data*,struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 struct wpabuf* FUNC9 (int) ; 
 struct wpabuf* FUNC10 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf*) ; 

__attribute__((used)) static struct wpabuf * FUNC12(struct ikev2_initiator_data *data)
{
	struct wpabuf *msg;

	/* build IKE_SA_INIT: HDR, SAi, KEi, Ni */

	if (FUNC5(data->i_spi, IKEV2_SPI_LEN))
		return NULL;
	FUNC7(MSG_DEBUG, "IKEV2: IKE_SA Initiator's SPI",
		    data->i_spi, IKEV2_SPI_LEN);

	data->i_nonce_len = IKEV2_NONCE_MIN_LEN;
	if (FUNC6(data->i_nonce, data->i_nonce_len))
		return NULL;
	FUNC7(MSG_DEBUG, "IKEV2: Ni", data->i_nonce, data->i_nonce_len);

	msg = FUNC9(sizeof(struct ikev2_hdr) + 1000);
	if (msg == NULL)
		return NULL;

	FUNC0(data, msg, IKE_SA_INIT, IKEV2_PAYLOAD_SA, 0);
	if (FUNC3(data, msg, IKEV2_PAYLOAD_KEY_EXCHANGE) ||
	    FUNC1(data, msg, IKEV2_PAYLOAD_NONCE) ||
	    FUNC2(data, msg, IKEV2_PAYLOAD_NO_NEXT_PAYLOAD)) {
		FUNC11(msg);
		return NULL;
	}

	FUNC4(msg);

	FUNC8(MSG_MSGDUMP, "IKEV2: Sending message (SA_INIT)", msg);

	FUNC11(data->i_sign_msg);
	data->i_sign_msg = FUNC10(msg);

	return msg;
}