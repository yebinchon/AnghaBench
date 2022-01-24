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
struct eap_sm {scalar_t__ const* identity; scalar_t__ identity_len; int /*<<< orphan*/  ssl_ctx; } ;
struct TYPE_2__ {int /*<<< orphan*/  conn; } ;
struct eap_peap_data {scalar_t__ state; TYPE_1__ ssl; } ;

/* Variables and functions */
 scalar_t__ const EAP_TYPE_PEAP ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ SUCCESS ; 
 scalar_t__ SUCCESS_REQ ; 
 int /*<<< orphan*/  eap_peap_process_msg ; 
 int /*<<< orphan*/  eap_peap_process_version ; 
 int /*<<< orphan*/  FUNC0 (struct eap_sm*,struct eap_peap_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_peap_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct eap_sm*,TYPE_1__*,struct wpabuf*,struct eap_peap_data*,scalar_t__ const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct eap_sm*,scalar_t__ const*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__ const*) ; 
 scalar_t__ const* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__ const*,scalar_t__ const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,scalar_t__ const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__* FUNC13 (struct wpabuf const*) ; 
 int FUNC14 (struct wpabuf const*) ; 

__attribute__((used)) static void FUNC15(struct eap_sm *sm, void *priv,
			     struct wpabuf *respData)
{
	struct eap_peap_data *data = priv;
	const struct wpabuf *buf;
	const u8 *pos;
	u8 id_len;

	if (FUNC2(sm, &data->ssl, respData, data,
				   EAP_TYPE_PEAP, eap_peap_process_version,
				   eap_peap_process_msg) < 0) {
		FUNC1(data, FAILURE);
		return;
	}

	if (data->state == SUCCESS ||
	    !FUNC7(sm->ssl_ctx, data->ssl.conn) ||
	    !FUNC9(sm->ssl_ctx, data->ssl.conn))
		return;

	buf = FUNC8(data->ssl.conn);
	if (!buf || FUNC14(buf) < 2) {
		FUNC12(MSG_DEBUG,
			   "EAP-PEAP: No success data in resumed session - reject attempt");
		FUNC1(data, FAILURE);
		return;
	}

	pos = FUNC13(buf);
	if (*pos != EAP_TYPE_PEAP) {
		FUNC12(MSG_DEBUG,
			   "EAP-PEAP: Resumed session for another EAP type (%u) - reject attempt",
			   *pos);
		FUNC1(data, FAILURE);
		return;
	}

	pos++;
	id_len = *pos++;
	FUNC11(MSG_DEBUG, "EAP-PEAP: Identity from cached session",
			  pos, id_len);
	FUNC4(sm->identity);
	sm->identity = FUNC5(id_len ? id_len : 1);
	if (!sm->identity) {
		sm->identity_len = 0;
		FUNC1(data, FAILURE);
		return;
	}

	FUNC6(sm->identity, pos, id_len);
	sm->identity_len = id_len;

	if (FUNC3(sm, sm->identity, sm->identity_len, 1) != 0) {
		FUNC11(MSG_DEBUG, "EAP-PEAP: Phase2 Identity not found in the user database",
				  sm->identity, sm->identity_len);
		FUNC1(data, FAILURE);
		return;
	}

	FUNC12(MSG_DEBUG,
		   "EAP-PEAP: Resuming previous session - skip Phase2");
	FUNC0(sm, data);
	if (data->state == SUCCESS_REQ)
		FUNC10(data->ssl.conn);
}