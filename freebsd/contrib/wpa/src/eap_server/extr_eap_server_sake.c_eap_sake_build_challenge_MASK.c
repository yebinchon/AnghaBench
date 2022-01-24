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
struct eap_sake_data {int /*<<< orphan*/  rand_s; void* state; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_SAKE_AT_RAND_S ; 
 int /*<<< orphan*/  EAP_SAKE_AT_SERVERID ; 
 int EAP_SAKE_RAND_LEN ; 
 int /*<<< orphan*/  EAP_SAKE_SUBTYPE_CHALLENGE ; 
 void* FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct wpabuf* FUNC1 (struct eap_sake_data*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct wpabuf * FUNC5(struct eap_sm *sm,
						struct eap_sake_data *data,
						u8 id)
{
	struct wpabuf *msg;
	size_t plen;

	FUNC4(MSG_DEBUG, "EAP-SAKE: Request/Challenge");

	if (FUNC2(data->rand_s, EAP_SAKE_RAND_LEN)) {
		FUNC4(MSG_ERROR, "EAP-SAKE: Failed to get random data");
		data->state = FAILURE;
		return NULL;
	}
	FUNC3(MSG_MSGDUMP, "EAP-SAKE: RAND_S (server rand)",
		    data->rand_s, EAP_SAKE_RAND_LEN);

	plen = 2 + EAP_SAKE_RAND_LEN + 2 + sm->server_id_len;
	msg = FUNC1(data, id, plen, EAP_SAKE_SUBTYPE_CHALLENGE);
	if (msg == NULL) {
		data->state = FAILURE;
		return NULL;
	}

	FUNC4(MSG_DEBUG, "EAP-SAKE: * AT_RAND_S");
	FUNC0(msg, EAP_SAKE_AT_RAND_S,
			  data->rand_s, EAP_SAKE_RAND_LEN);

	FUNC4(MSG_DEBUG, "EAP-SAKE: * AT_SERVERID");
	FUNC0(msg, EAP_SAKE_AT_SERVERID,
			  sm->server_id, sm->server_id_len);

	return msg;
}