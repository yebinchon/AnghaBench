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
struct eap_sm {scalar_t__ server_id_len; int /*<<< orphan*/  server_id; } ;
struct eap_psk_hdr_1 {int /*<<< orphan*/  rand_s; int /*<<< orphan*/  flags; } ;
struct eap_psk_data {int /*<<< orphan*/  rand_s; void* state; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EAP_PSK_RAND_LEN ; 
 int /*<<< orphan*/  EAP_TYPE_PSK ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 void* FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 struct wpabuf* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 struct eap_psk_hdr_1* FUNC6 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static struct wpabuf * FUNC8(struct eap_sm *sm,
				       struct eap_psk_data *data, u8 id)
{
	struct wpabuf *req;
	struct eap_psk_hdr_1 *psk;

	FUNC5(MSG_DEBUG, "EAP-PSK: PSK-1 (sending)");

	if (FUNC3(data->rand_s, EAP_PSK_RAND_LEN)) {
		FUNC5(MSG_ERROR, "EAP-PSK: Failed to get random data");
		data->state = FAILURE;
		return NULL;
	}
	FUNC4(MSG_MSGDUMP, "EAP-PSK: RAND_S (server rand)",
		    data->rand_s, EAP_PSK_RAND_LEN);

	req = FUNC1(EAP_VENDOR_IETF, EAP_TYPE_PSK,
			    sizeof(*psk) + sm->server_id_len,
			    EAP_CODE_REQUEST, id);
	if (req == NULL) {
		FUNC5(MSG_ERROR, "EAP-PSK: Failed to allocate memory "
			   "request");
		data->state = FAILURE;
		return NULL;
	}

	psk = FUNC6(req, sizeof(*psk));
	psk->flags = FUNC0(0); /* T=0 */
	FUNC2(psk->rand_s, data->rand_s, EAP_PSK_RAND_LEN);
	FUNC7(req, sm->server_id, sm->server_id_len);

	return req;
}