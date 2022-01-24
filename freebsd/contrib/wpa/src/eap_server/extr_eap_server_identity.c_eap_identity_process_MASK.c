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
struct eap_sm {char* identity; size_t identity_len; int /*<<< orphan*/  update_user; } ;
struct eap_identity_data {void* state; scalar_t__ pick_up; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_TYPE_IDENTITY ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 void* FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 void* SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf*,size_t*) ; 
 scalar_t__ FUNC1 (struct eap_sm*,struct eap_identity_data*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_sm*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC9(struct eap_sm *sm, void *priv,
				 struct wpabuf *respData)
{
	struct eap_identity_data *data = priv;
	const u8 *pos;
	size_t len;
	char *buf;

	if (data->pick_up) {
		if (FUNC1(sm, data, respData)) {
			FUNC8(MSG_DEBUG, "EAP-Identity: failed to pick "
				   "up already started negotiation");
			data->state = FAILURE;
			return;
		}
		data->pick_up = 0;
	}

	pos = FUNC0(EAP_VENDOR_IETF, EAP_TYPE_IDENTITY,
			       respData, &len);
	if (pos == NULL)
		return; /* Should not happen - frame already validated */

	FUNC7(MSG_DEBUG, "EAP-Identity: Peer identity", pos, len);
	buf = FUNC4(len * 4 + 1);
	if (buf) {
		FUNC6(buf, len * 4 + 1, pos, len);
		FUNC2(sm, "EAP-Response/Identity '%s'", buf);
		FUNC3(buf);
	}
	if (sm->identity)
		sm->update_user = TRUE;
	FUNC3(sm->identity);
	sm->identity = FUNC4(len ? len : 1);
	if (sm->identity == NULL) {
		data->state = FAILURE;
	} else {
		FUNC5(sm->identity, pos, len);
		sm->identity_len = len;
		data->state = SUCCESS;
	}
}