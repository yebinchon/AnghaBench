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
struct wpabuf {int dummy; } ;
struct eap_ssl_data {int tls_v13; struct wpabuf const* tls_out; int /*<<< orphan*/  conn; int /*<<< orphan*/  ssl_ctx; } ;
struct eap_sm {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  EapType ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct eap_ssl_data*) ; 
 int FUNC1 (struct eap_sm*,struct eap_ssl_data*,struct wpabuf const*,struct wpabuf**) ; 
 int FUNC2 (struct eap_ssl_data*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,struct wpabuf**) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf const*) ; 
 scalar_t__ FUNC8 (struct wpabuf const*) ; 

int FUNC9(struct eap_sm *sm, struct eap_ssl_data *data,
				EapType eap_type, int peap_version,
				u8 id, const struct wpabuf *in_data,
				struct wpabuf **out_data)
{
	int ret = 0;

	*out_data = NULL;

	if (data->tls_out && FUNC8(data->tls_out) > 0 &&
	    FUNC8(in_data) > 0) {
		FUNC6(MSG_DEBUG, "SSL: Received non-ACK when output "
			   "fragments are waiting to be sent out");
		return -1;
	}

	if (data->tls_out == NULL || FUNC8(data->tls_out) == 0) {
		/*
		 * No more data to send out - expect to receive more data from
		 * the AS.
		 */
		int res = FUNC1(sm, data, in_data, out_data);
		char buf[20];

		if (res) {
			/*
			 * Input processing failed (res = -1) or more data is
			 * needed (res = 1).
			 */
			return res;
		}

		/*
		 * The incoming message has been reassembled and processed. The
		 * response was allocated into data->tls_out buffer.
		 */

		if (FUNC5(data->ssl_ctx, data->conn,
				    buf, sizeof(buf)) == 0) {
			FUNC6(MSG_DEBUG, "SSL: Using TLS version %s", buf);
			data->tls_v13 = FUNC3(buf, "TLSv1.3") == 0;
		}
	}

	if (data->tls_out == NULL) {
		/*
		 * No outgoing fragments remaining from the previous message
		 * and no new message generated. This indicates an error in TLS
		 * processing.
		 */
		FUNC0(data);
		return -1;
	}

	if (FUNC4(data->ssl_ctx, data->conn)) {
		/* TLS processing has failed - return error */
		FUNC6(MSG_DEBUG, "SSL: Failed - tls_out available to "
			   "report error (len=%u)",
			   (unsigned int) FUNC8(data->tls_out));
		ret = -1;
		/* TODO: clean pin if engine used? */
		if (FUNC8(data->tls_out) == 0) {
			FUNC7(data->tls_out);
			data->tls_out = NULL;
			return -1;
		}
	}

	if (FUNC8(data->tls_out) == 0) {
		/*
		 * TLS negotiation should now be complete since all other cases
		 * needing more data should have been caught above based on
		 * the TLS Message Length field.
		 */
		FUNC6(MSG_DEBUG, "SSL: No data to be sent out");
		FUNC7(data->tls_out);
		data->tls_out = NULL;
		return 1;
	}

	/* Send the pending message (in fragments, if needed). */
	return FUNC2(data, eap_type, peap_version, id, ret,
				      out_data);
}