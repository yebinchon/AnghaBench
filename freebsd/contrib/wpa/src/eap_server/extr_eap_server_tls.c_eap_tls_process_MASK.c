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
typedef  scalar_t__ u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  conn; } ;
struct eap_tls_data {scalar_t__ const eap_type; TYPE_1__ ssl; } ;
struct eap_sm {int /*<<< orphan*/  ssl_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  SUCCESS ; 
 scalar_t__ FUNC0 (struct eap_sm*,TYPE_1__*,struct wpabuf*,struct eap_tls_data*,scalar_t__ const,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eap_tls_process_msg ; 
 int /*<<< orphan*/  FUNC1 (struct eap_tls_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__* FUNC7 (struct wpabuf const*) ; 
 int FUNC8 (struct wpabuf const*) ; 

__attribute__((used)) static void FUNC9(struct eap_sm *sm, void *priv,
			    struct wpabuf *respData)
{
	struct eap_tls_data *data = priv;
	const struct wpabuf *buf;
	const u8 *pos;

	if (FUNC0(sm, &data->ssl, respData, data,
				   data->eap_type, NULL, eap_tls_process_msg) <
	    0) {
		FUNC1(data, FAILURE);
		return;
	}

	if (!FUNC2(sm->ssl_ctx, data->ssl.conn) ||
	    !FUNC4(sm->ssl_ctx, data->ssl.conn))
		return;

	buf = FUNC3(data->ssl.conn);
	if (!buf || FUNC8(buf) < 1) {
		FUNC6(MSG_DEBUG,
			   "EAP-TLS: No success data in resumed session - reject attempt");
		FUNC1(data, FAILURE);
		return;
	}

	pos = FUNC7(buf);
	if (*pos != data->eap_type) {
		FUNC6(MSG_DEBUG,
			   "EAP-TLS: Resumed session for another EAP type (%u) - reject attempt",
			   *pos);
		FUNC1(data, FAILURE);
		return;
	}

	FUNC6(MSG_DEBUG,
		   "EAP-TLS: Resuming previous session");
	FUNC1(data, SUCCESS);
	FUNC5(data->ssl.conn);
	/* TODO: Cache serial number with session and update EAP user
	 * information based on the cached serial number */
}