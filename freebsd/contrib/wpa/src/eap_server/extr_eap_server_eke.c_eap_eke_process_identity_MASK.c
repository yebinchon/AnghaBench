#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {TYPE_2__* user; } ;
struct eap_eke_data {scalar_t__ state; int peerid_len; int /*<<< orphan*/  msgs; int /*<<< orphan*/  phase2; int /*<<< orphan*/ * peerid; int /*<<< orphan*/  peerid_type; int /*<<< orphan*/  sess; } ;
struct TYPE_4__ {scalar_t__ password_len; int /*<<< orphan*/ * password; TYPE_1__* methods; } ;
struct TYPE_3__ {scalar_t__ vendor; scalar_t__ method; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMIT ; 
 int /*<<< orphan*/  EAP_EKE_FAIL_PASSWD_NOT_FOUND ; 
 int /*<<< orphan*/  EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  EAP_EKE_FAIL_PROTO_ERROR ; 
 int EAP_MAX_METHODS ; 
 scalar_t__ EAP_TYPE_EKE ; 
 scalar_t__ EAP_VENDOR_IETF ; 
 scalar_t__ IDENTITY ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct eap_eke_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int const,int const,int const,int const) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_eke_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct eap_sm*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct wpabuf const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct eap_sm *sm,
				     struct eap_eke_data *data,
				     const struct wpabuf *respData,
				     const u8 *payload, size_t payloadlen)
{
	const u8 *pos, *end;
	int i;

	FUNC8(MSG_DEBUG, "EAP-EKE: Received Response/Identity");

	if (data->state != IDENTITY) {
		FUNC0(data, EAP_EKE_FAIL_PROTO_ERROR);
		return;
	}

	pos = payload;
	end = payload + payloadlen;

	if (pos + 2 + 4 + 1 > end) {
		FUNC8(MSG_INFO, "EAP-EKE: Too short EAP-EKE-ID payload");
		FUNC0(data, EAP_EKE_FAIL_PROTO_ERROR);
		return;
	}

	if (*pos != 1) {
		FUNC8(MSG_INFO, "EAP-EKE: Unexpected NumProposals %d (expected 1)",
			   *pos);
		FUNC0(data, EAP_EKE_FAIL_PROTO_ERROR);
		return;
	}

	pos += 2;

	if (!FUNC6(pos)) {
		FUNC8(MSG_INFO, "EAP-EKE: Unexpected Proposal (%u:%u:%u:%u)",
			   pos[0], pos[1], pos[2], pos[3]);
		FUNC0(data, EAP_EKE_FAIL_PROTO_ERROR);
		return;
	}

	FUNC8(MSG_DEBUG, "EAP-EKE: Selected Proposal (%u:%u:%u:%u)",
		   pos[0], pos[1], pos[2], pos[3]);
	if (FUNC1(&data->sess, pos[0], pos[1], pos[2], pos[3]) <
	    0) {
		FUNC0(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
		return;
	}
	pos += 4;

	data->peerid_type = *pos++;
	FUNC4(data->peerid);
	data->peerid = FUNC5(pos, end - pos);
	if (data->peerid == NULL) {
		FUNC8(MSG_INFO, "EAP-EKE: Failed to allocate memory for peerid");
		FUNC0(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
		return;
	}
	data->peerid_len = end - pos;
	FUNC8(MSG_DEBUG, "EAP-EKE: Peer IDType %u", data->peerid_type);
	FUNC7(MSG_DEBUG, "EAP-EKE: Peer Identity",
			  data->peerid, data->peerid_len);

	if (FUNC3(sm, data->peerid, data->peerid_len, data->phase2)) {
		FUNC8(MSG_INFO, "EAP-EKE: Peer Identity not found from user database");
		FUNC0(data, EAP_EKE_FAIL_PASSWD_NOT_FOUND);
		return;
	}

	for (i = 0; i < EAP_MAX_METHODS; i++) {
		if (sm->user->methods[i].vendor == EAP_VENDOR_IETF &&
		    sm->user->methods[i].method == EAP_TYPE_EKE)
			break;
	}
	if (i == EAP_MAX_METHODS) {
		FUNC8(MSG_INFO, "EAP-EKE: Matching user entry does not allow EAP-EKE");
		FUNC0(data, EAP_EKE_FAIL_PASSWD_NOT_FOUND);
		return;
	}

	if (sm->user->password == NULL || sm->user->password_len == 0) {
		FUNC8(MSG_INFO, "EAP-EKE: No password configured for peer");
		FUNC0(data, EAP_EKE_FAIL_PASSWD_NOT_FOUND);
		return;
	}

	if (FUNC11(&data->msgs, FUNC9(respData)) < 0) {
		FUNC0(data, EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR);
		return;
	}
	FUNC10(data->msgs, respData);

	FUNC2(data, COMMIT);
}