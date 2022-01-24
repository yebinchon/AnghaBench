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
struct TYPE_2__ {int /*<<< orphan*/  conn; } ;
struct eap_teap_data {struct wpabuf* pending_phase2_resp; TYPE_1__ ssl; } ;
struct eap_sm {scalar_t__ method_pending; int /*<<< orphan*/  ssl_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FAILURE ; 
 scalar_t__ METHOD_PENDING_WAIT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct eap_sm*,struct eap_teap_data*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_teap_data*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*) ; 
 scalar_t__ FUNC6 (struct wpabuf*) ; 

__attribute__((used)) static void FUNC7(struct eap_sm *sm,
				    struct eap_teap_data *data,
				    struct wpabuf *in_buf)
{
	struct wpabuf *in_decrypted;

	FUNC4(MSG_DEBUG,
		   "EAP-TEAP: Received %lu bytes encrypted data for Phase 2",
		   (unsigned long) FUNC6(in_buf));

	if (data->pending_phase2_resp) {
		FUNC4(MSG_DEBUG,
			   "EAP-TEAP: Pending Phase 2 response - skip decryption and use old data");
		FUNC0(sm, data,
					     data->pending_phase2_resp);
		FUNC5(data->pending_phase2_resp);
		data->pending_phase2_resp = NULL;
		return;
	}

	in_decrypted = FUNC2(sm->ssl_ctx, data->ssl.conn,
					      in_buf);
	if (!in_decrypted) {
		FUNC4(MSG_INFO,
			   "EAP-TEAP: Failed to decrypt Phase 2 data");
		FUNC1(data, FAILURE);
		return;
	}

	FUNC3(MSG_DEBUG, "EAP-TEAP: Decrypted Phase 2 TLVs",
			    in_decrypted);

	FUNC0(sm, data, in_decrypted);

	if (sm->method_pending == METHOD_PENDING_WAIT) {
		FUNC4(MSG_DEBUG,
			   "EAP-TEAP: Phase 2 method is in pending wait state - save decrypted response");
		FUNC5(data->pending_phase2_resp);
		data->pending_phase2_resp = in_decrypted;
		return;
	}

	FUNC5(in_decrypted);
}