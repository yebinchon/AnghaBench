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
struct eap_sm {int server_id_len; int /*<<< orphan*/  server_id; } ;
struct eap_gpsk_data {int csuite_count; int /*<<< orphan*/  csuite_list; int /*<<< orphan*/  rand_server; } ;
struct eap_gpsk_csuite {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_REQUEST ; 
 int /*<<< orphan*/  EAP_GPSK_OPCODE_GPSK_1 ; 
 int EAP_GPSK_RAND_LEN ; 
 int /*<<< orphan*/  EAP_TYPE_GPSK ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  FUNC0 (struct eap_gpsk_data*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct wpabuf * FUNC8(struct eap_sm *sm,
					     struct eap_gpsk_data *data, u8 id)
{
	size_t len;
	struct wpabuf *req;

	FUNC4(MSG_DEBUG, "EAP-GPSK: Request/GPSK-1");

	if (FUNC2(data->rand_server, EAP_GPSK_RAND_LEN)) {
		FUNC4(MSG_ERROR, "EAP-GPSK: Failed to get random data");
		FUNC0(data, FAILURE);
		return NULL;
	}
	FUNC3(MSG_MSGDUMP, "EAP-GPSK: RAND_Server",
		    data->rand_server, EAP_GPSK_RAND_LEN);

	len = 1 + 2 + sm->server_id_len + EAP_GPSK_RAND_LEN + 2 +
		data->csuite_count * sizeof(struct eap_gpsk_csuite);
	req = FUNC1(EAP_VENDOR_IETF, EAP_TYPE_GPSK, len,
			    EAP_CODE_REQUEST, id);
	if (req == NULL) {
		FUNC4(MSG_ERROR, "EAP-GPSK: Failed to allocate memory "
			   "for request/GPSK-1");
		FUNC0(data, FAILURE);
		return NULL;
	}

	FUNC7(req, EAP_GPSK_OPCODE_GPSK_1);
	FUNC5(req, sm->server_id_len);
	FUNC6(req, sm->server_id, sm->server_id_len);
	FUNC6(req, data->rand_server, EAP_GPSK_RAND_LEN);
	FUNC5(req,
			data->csuite_count * sizeof(struct eap_gpsk_csuite));
	FUNC6(req, data->csuite_list,
			data->csuite_count * sizeof(struct eap_gpsk_csuite));

	return req;
}