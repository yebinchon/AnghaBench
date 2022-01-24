#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wpabuf {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  tls_out; int /*<<< orphan*/  conn; scalar_t__ tls_v13; struct wpabuf* tls_in; } ;
struct eap_tls_data {scalar_t__ state; TYPE_1__ ssl; } ;
struct eap_sm {int /*<<< orphan*/  ssl_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ SUCCESS ; 
 struct wpabuf* FUNC0 (struct eap_sm*,TYPE_1__*,struct wpabuf*) ; 
 scalar_t__ FUNC1 (struct eap_sm*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_tls_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*) ; 
 scalar_t__ FUNC8 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC12(struct eap_sm *sm, void *priv,
				const struct wpabuf *respData)
{
	struct eap_tls_data *data = priv;
	if (data->state == SUCCESS && FUNC8(data->ssl.tls_in) == 0) {
		FUNC5(MSG_DEBUG, "EAP-TLS: Client acknowledged final TLS "
			   "handshake message");
		return;
	}
	if (FUNC1(sm, &data->ssl) < 0) {
		FUNC2(data, FAILURE);
		return;
	}

	if (data->ssl.tls_v13 &&
	    FUNC3(sm->ssl_ctx, data->ssl.conn)) {
		struct wpabuf *plain, *encr;

		FUNC5(MSG_DEBUG,
			   "EAP-TLS: Send empty application data to indicate end of exchange");
		/* FIX: This should be an empty application data based on
		 * draft-ietf-emu-eap-tls13-05, but OpenSSL does not allow zero
		 * length payload (SSL_write() documentation explicitly
		 * describes this as not allowed), so work around that for now
		 * by sending out a payload of one octet. Hopefully the draft
		 * specification will change to allow this so that no crypto
		 * library changes are needed. */
		plain = FUNC6(1);
		if (!plain)
			return;
		FUNC10(plain, 0);
		encr = FUNC0(sm, &data->ssl, plain);
		FUNC7(plain);
		if (!encr)
			return;
		if (FUNC11(&data->ssl.tls_out, FUNC8(encr)) < 0) {
			FUNC5(MSG_INFO,
				   "EAP-TLS: Failed to resize output buffer");
			FUNC7(encr);
			return;
		}
		FUNC9(data->ssl.tls_out, encr);
		FUNC4(MSG_DEBUG,
				"EAP-TLS: Data appended to the message", encr);
		FUNC7(encr);
	}
}