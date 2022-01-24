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
struct eap_ttls_data {TYPE_1__ ssl; } ;
struct eap_sm {scalar_t__ const* identity; scalar_t__ identity_len; int /*<<< orphan*/  ssl_ctx; } ;

/* Variables and functions */
 scalar_t__ const EAP_TYPE_TTLS ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  SUCCESS ; 
 scalar_t__ FUNC0 (struct eap_sm*,TYPE_1__*,struct wpabuf*,struct eap_ttls_data*,scalar_t__ const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eap_ttls_process_msg ; 
 int /*<<< orphan*/  eap_ttls_process_version ; 
 int /*<<< orphan*/  FUNC1 (struct eap_ttls_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct eap_sm*,scalar_t__ const*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__ const*) ; 
 scalar_t__ const* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__ const*,scalar_t__ const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,scalar_t__ const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__* FUNC12 (struct wpabuf const*) ; 
 int FUNC13 (struct wpabuf const*) ; 

__attribute__((used)) static void FUNC14(struct eap_sm *sm, void *priv,
			     struct wpabuf *respData)
{
	struct eap_ttls_data *data = priv;
	const struct wpabuf *buf;
	const u8 *pos;
	u8 id_len;

	if (FUNC0(sm, &data->ssl, respData, data,
				   EAP_TYPE_TTLS, eap_ttls_process_version,
				   eap_ttls_process_msg) < 0) {
		FUNC1(data, FAILURE);
		return;
	}

	if (!FUNC6(sm->ssl_ctx, data->ssl.conn) ||
	    !FUNC8(sm->ssl_ctx, data->ssl.conn))
		return;

	buf = FUNC7(data->ssl.conn);
	if (!buf || FUNC13(buf) < 1) {
		FUNC11(MSG_DEBUG,
			   "EAP-TTLS: No success data in resumed session - reject attempt");
		FUNC1(data, FAILURE);
		return;
	}

	pos = FUNC12(buf);
	if (*pos != EAP_TYPE_TTLS) {
		FUNC11(MSG_DEBUG,
			   "EAP-TTLS: Resumed session for another EAP type (%u) - reject attempt",
			   *pos);
		FUNC1(data, FAILURE);
		return;
	}

	pos++;
	id_len = *pos++;
	FUNC10(MSG_DEBUG, "EAP-TTLS: Identity from cached session",
			  pos, id_len);
	FUNC3(sm->identity);
	sm->identity = FUNC4(id_len ? id_len : 1);
	if (!sm->identity) {
		sm->identity_len = 0;
		FUNC1(data, FAILURE);
		return;
	}

	FUNC5(sm->identity, pos, id_len);
	sm->identity_len = id_len;

	if (FUNC2(sm, sm->identity, sm->identity_len, 1) != 0) {
		FUNC10(MSG_DEBUG, "EAP-TTLS: Phase2 Identity not found in the user database",
				  sm->identity, sm->identity_len);
		FUNC1(data, FAILURE);
		return;
	}

	FUNC11(MSG_DEBUG,
		   "EAP-TTLS: Resuming previous session - skip Phase2");
	FUNC1(data, SUCCESS);
	FUNC9(data->ssl.conn);
}