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
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int /*<<< orphan*/  server_id_len; int /*<<< orphan*/  server_id; TYPE_1__* user; } ;
struct eap_sake_parse_attr {int /*<<< orphan*/  mic_p; int /*<<< orphan*/  peerid_len; scalar_t__ peerid; int /*<<< orphan*/  rand_p; } ;
struct TYPE_4__ {int /*<<< orphan*/  auth; } ;
struct eap_sake_data {scalar_t__ state; int /*<<< orphan*/  peerid_len; int /*<<< orphan*/ * peerid; int /*<<< orphan*/  rand_p; int /*<<< orphan*/  rand_s; TYPE_2__ tek; int /*<<< orphan*/  emsk; int /*<<< orphan*/  msk; } ;
struct TYPE_3__ {int password_len; int /*<<< orphan*/ * password; } ;

/* Variables and functions */
 scalar_t__ CHALLENGE ; 
 void* CONFIRM ; 
 int EAP_SAKE_MIC_LEN ; 
 int /*<<< orphan*/  EAP_SAKE_RAND_LEN ; 
 int EAP_SAKE_ROOT_SECRET_LEN ; 
 void* FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,size_t,struct eap_sake_parse_attr*) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sake_data*,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf const*) ; 

__attribute__((used)) static void FUNC11(struct eap_sm *sm,
				       struct eap_sake_data *data,
				       const struct wpabuf *respData,
				       const u8 *payload, size_t payloadlen)
{
	struct eap_sake_parse_attr attr;
	u8 mic_p[EAP_SAKE_MIC_LEN];

	if (data->state != CHALLENGE)
		return;

	FUNC8(MSG_DEBUG, "EAP-SAKE: Received Response/Challenge");

	if (FUNC2(payload, payloadlen, &attr))
		return;

	if (!attr.rand_p || !attr.mic_p) {
		FUNC8(MSG_INFO, "EAP-SAKE: Response/Challenge did not "
			   "include AT_RAND_P or AT_MIC_P");
		return;
	}

	FUNC6(data->rand_p, attr.rand_p, EAP_SAKE_RAND_LEN);

	FUNC4(data->peerid);
	data->peerid = NULL;
	data->peerid_len = 0;
	if (attr.peerid) {
		data->peerid = FUNC7(attr.peerid, attr.peerid_len);
		if (data->peerid == NULL)
			return;
		data->peerid_len = attr.peerid_len;
	}

	if (sm->user == NULL || sm->user->password == NULL ||
	    sm->user->password_len != 2 * EAP_SAKE_ROOT_SECRET_LEN) {
		FUNC8(MSG_INFO, "EAP-SAKE: Plaintext password with "
			   "%d-byte key not configured",
			   2 * EAP_SAKE_ROOT_SECRET_LEN);
		data->state = FAILURE;
		return;
	}
	if (FUNC1(sm->user->password,
				 sm->user->password + EAP_SAKE_ROOT_SECRET_LEN,
				 data->rand_s, data->rand_p,
				 (u8 *) &data->tek, data->msk,
				 data->emsk) < 0) {
		FUNC8(MSG_INFO, "EAP-SAKE: Failed to derive keys");
		data->state = FAILURE;
		return;
	}

	if (FUNC0(data->tek.auth, data->rand_s, data->rand_p,
				 sm->server_id, sm->server_id_len,
				 data->peerid, data->peerid_len, 1,
				 FUNC9(respData), FUNC10(respData),
				 attr.mic_p, mic_p) < 0) {
		FUNC8(MSG_INFO, "EAP-SAKE: Failed to compute MIC");
		data->state = FAILURE;
		return;
	}
	if (FUNC5(attr.mic_p, mic_p, EAP_SAKE_MIC_LEN) != 0) {
		FUNC8(MSG_INFO, "EAP-SAKE: Incorrect AT_MIC_P");
		FUNC3(data, FAILURE);
		return;
	}

	FUNC3(data, CONFIRM);
}