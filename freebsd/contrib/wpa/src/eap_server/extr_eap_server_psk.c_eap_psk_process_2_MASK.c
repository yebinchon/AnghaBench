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
struct eap_sm {int server_id_len; int /*<<< orphan*/ * server_id; TYPE_2__* user; } ;
struct eap_psk_hdr_2 {int /*<<< orphan*/ * mac_p; int /*<<< orphan*/ * rand_p; } ;
struct eap_psk_data {scalar_t__ state; size_t id_p_len; int /*<<< orphan*/  ak; int /*<<< orphan*/ * rand_p; int /*<<< orphan*/ * rand_s; int /*<<< orphan*/ * id_p; int /*<<< orphan*/  kdk; } ;
struct TYPE_4__ {scalar_t__ password_len; int /*<<< orphan*/ * password; TYPE_1__* methods; } ;
struct TYPE_3__ {scalar_t__ vendor; scalar_t__ method; } ;

/* Variables and functions */
 int EAP_MAX_METHODS ; 
 int /*<<< orphan*/  EAP_PSK_AK_LEN ; 
 int /*<<< orphan*/  EAP_PSK_KDK_LEN ; 
 int EAP_PSK_MAC_LEN ; 
 scalar_t__ EAP_PSK_PSK_LEN ; 
 int EAP_PSK_RAND_LEN ; 
 scalar_t__ EAP_TYPE_NONE ; 
 scalar_t__ EAP_TYPE_PSK ; 
 scalar_t__ EAP_VENDOR_IETF ; 
 void* FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 scalar_t__ PSK_1 ; 
 scalar_t__ PSK_3 ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__,scalar_t__,struct wpabuf*,size_t*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct eap_sm*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC13(struct eap_sm *sm,
			      struct eap_psk_data *data,
			      struct wpabuf *respData)
{
	const struct eap_psk_hdr_2 *resp;
	u8 *pos, mac[EAP_PSK_MAC_LEN], *buf;
	size_t left, buflen;
	int i;
	const u8 *cpos;

	if (data->state != PSK_1)
		return;

	FUNC12(MSG_DEBUG, "EAP-PSK: Received PSK-2");

	cpos = FUNC0(EAP_VENDOR_IETF, EAP_TYPE_PSK, respData,
				&left);
	if (cpos == NULL || left < sizeof(*resp)) {
		FUNC12(MSG_INFO, "EAP-PSK: Invalid frame");
		return;
	}
	resp = (const struct eap_psk_hdr_2 *) cpos;
	cpos = (const u8 *) (resp + 1);
	left -= sizeof(*resp);

	FUNC4(data->id_p);
	data->id_p = FUNC8(cpos, left);
	if (data->id_p == NULL) {
		FUNC12(MSG_INFO, "EAP-PSK: Failed to allocate memory for "
			   "ID_P");
		return;
	}
	data->id_p_len = left;
	FUNC10(MSG_MSGDUMP, "EAP-PSK: ID_P",
			  data->id_p, data->id_p_len);

	if (FUNC2(sm, data->id_p, data->id_p_len, 0) < 0) {
		FUNC10(MSG_DEBUG, "EAP-PSK: unknown ID_P",
				  data->id_p, data->id_p_len);
		data->state = FAILURE;
		return;
	}

	for (i = 0;
	     i < EAP_MAX_METHODS &&
		     (sm->user->methods[i].vendor != EAP_VENDOR_IETF ||
		      sm->user->methods[i].method != EAP_TYPE_NONE);
	     i++) {
		if (sm->user->methods[i].vendor == EAP_VENDOR_IETF &&
		    sm->user->methods[i].method == EAP_TYPE_PSK)
			break;
	}

	if (i >= EAP_MAX_METHODS ||
	    sm->user->methods[i].vendor != EAP_VENDOR_IETF ||
	    sm->user->methods[i].method != EAP_TYPE_PSK) {
		FUNC10(MSG_DEBUG,
				  "EAP-PSK: EAP-PSK not enabled for ID_P",
				  data->id_p, data->id_p_len);
		data->state = FAILURE;
		return;
	}

	if (sm->user->password == NULL ||
	    sm->user->password_len != EAP_PSK_PSK_LEN) {
		FUNC10(MSG_DEBUG, "EAP-PSK: invalid password in "
				  "user database for ID_P",
				  data->id_p, data->id_p_len);
		data->state = FAILURE;
		return;
	}
	if (FUNC1(sm->user->password, data->ak, data->kdk)) {
		data->state = FAILURE;
		return;
	}
	FUNC11(MSG_DEBUG, "EAP-PSK: AK", data->ak, EAP_PSK_AK_LEN);
	FUNC11(MSG_DEBUG, "EAP-PSK: KDK", data->kdk, EAP_PSK_KDK_LEN);

	FUNC9(MSG_MSGDUMP, "EAP-PSK: RAND_P (client rand)",
		    resp->rand_p, EAP_PSK_RAND_LEN);
	FUNC7(data->rand_p, resp->rand_p, EAP_PSK_RAND_LEN);

	/* MAC_P = OMAC1-AES-128(AK, ID_P||ID_S||RAND_S||RAND_P) */
	buflen = data->id_p_len + sm->server_id_len + 2 * EAP_PSK_RAND_LEN;
	buf = FUNC5(buflen);
	if (buf == NULL) {
		data->state = FAILURE;
		return;
	}
	FUNC7(buf, data->id_p, data->id_p_len);
	pos = buf + data->id_p_len;
	FUNC7(pos, sm->server_id, sm->server_id_len);
	pos += sm->server_id_len;
	FUNC7(pos, data->rand_s, EAP_PSK_RAND_LEN);
	pos += EAP_PSK_RAND_LEN;
	FUNC7(pos, data->rand_p, EAP_PSK_RAND_LEN);
	if (FUNC3(data->ak, buf, buflen, mac)) {
		FUNC4(buf);
		data->state = FAILURE;
		return;
	}
	FUNC4(buf);
	FUNC9(MSG_DEBUG, "EAP-PSK: MAC_P", resp->mac_p, EAP_PSK_MAC_LEN);
	if (FUNC6(mac, resp->mac_p, EAP_PSK_MAC_LEN) != 0) {
		FUNC12(MSG_INFO, "EAP-PSK: Invalid MAC_P");
		FUNC9(MSG_MSGDUMP, "EAP-PSK: Expected MAC_P",
			    mac, EAP_PSK_MAC_LEN);
		data->state = FAILURE;
		return;
	}

	data->state = PSK_3;
}