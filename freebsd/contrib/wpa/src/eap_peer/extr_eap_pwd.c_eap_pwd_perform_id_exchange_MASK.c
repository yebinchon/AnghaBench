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
struct eap_sm {int dummy; } ;
struct eap_pwd_id {scalar_t__ random_function; scalar_t__ prf; scalar_t__ prep; int /*<<< orphan*/  token; int /*<<< orphan*/  identity; int /*<<< orphan*/  group_num; } ;
struct eap_pwd_data {scalar_t__ state; scalar_t__ prep; size_t id_server_len; int id_peer_len; int /*<<< orphan*/  id_peer; int /*<<< orphan*/ * outbuf; int /*<<< orphan*/  group_num; int /*<<< orphan*/ * grp; int /*<<< orphan*/ * id_server; int /*<<< orphan*/ * token; scalar_t__ password_hash; } ;
struct eap_method_ret {void* ignore; } ;

/* Variables and functions */
 scalar_t__ EAP_PWD_DEFAULT_PRF ; 
 scalar_t__ EAP_PWD_DEFAULT_RAND_FUNC ; 
 scalar_t__ EAP_PWD_PREP_MS ; 
 scalar_t__ EAP_PWD_PREP_NONE ; 
 scalar_t__ EAP_PWD_PREP_SSHA1 ; 
 scalar_t__ EAP_PWD_PREP_SSHA256 ; 
 scalar_t__ EAP_PWD_PREP_SSHA512 ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  PWD_Commit_Req ; 
 scalar_t__ PWD_ID_Req ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_pwd_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_pwd_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void
FUNC12(struct eap_sm *sm, struct eap_pwd_data *data,
			    struct eap_method_ret *ret,
			    const struct wpabuf *reqData,
			    const u8 *payload, size_t payload_len)
{
	struct eap_pwd_id *id;

	if (data->state != PWD_ID_Req) {
		ret->ignore = TRUE;
		FUNC2(data, FAILURE);
		return;
	}

	if (payload_len < sizeof(struct eap_pwd_id)) {
		ret->ignore = TRUE;
		FUNC2(data, FAILURE);
		return;
	}

	id = (struct eap_pwd_id *) payload;
	data->group_num = FUNC0(id->group_num);
	FUNC7(MSG_DEBUG,
		   "EAP-PWD: Server EAP-pwd-ID proposal: group=%u random=%u prf=%u prep=%u",
		   data->group_num, id->random_function, id->prf, id->prep);
	if (id->random_function != EAP_PWD_DEFAULT_RAND_FUNC ||
	    id->prf != EAP_PWD_DEFAULT_PRF ||
	    !FUNC1(data, data->group_num)) {
		FUNC7(MSG_INFO,
			   "EAP-pwd: Unsupported or disabled proposal");
		FUNC2(data, FAILURE);
		return;
	}

	if (id->prep != EAP_PWD_PREP_NONE &&
	    id->prep != EAP_PWD_PREP_MS &&
	    id->prep != EAP_PWD_PREP_SSHA1 &&
	    id->prep != EAP_PWD_PREP_SSHA256 &&
	    id->prep != EAP_PWD_PREP_SSHA512) {
		FUNC7(MSG_DEBUG,
			   "EAP-PWD: Unsupported password pre-processing technique (Prep=%u)",
			   id->prep);
		FUNC2(data, FAILURE);
		return;
	}

	if (id->prep == EAP_PWD_PREP_NONE && data->password_hash) {
		FUNC7(MSG_DEBUG,
			   "EAP-PWD: Unhashed password not available");
		FUNC2(data, FAILURE);
		return;
	}

	FUNC7(MSG_DEBUG, "EAP-PWD (peer): using group %d",
		   data->group_num);

	data->prep = id->prep;
	FUNC5(data->token, id->token, sizeof(id->token));

	if (data->id_server || data->grp) {
		FUNC7(MSG_INFO, "EAP-pwd: data was already allocated");
		FUNC2(data, FAILURE);
		return;
	}

	data->id_server = FUNC4(payload_len - sizeof(struct eap_pwd_id));
	if (data->id_server == NULL) {
		FUNC7(MSG_INFO, "EAP-PWD: memory allocation id fail");
		FUNC2(data, FAILURE);
		return;
	}
	data->id_server_len = payload_len - sizeof(struct eap_pwd_id);
	FUNC5(data->id_server, id->identity, data->id_server_len);
	FUNC6(MSG_INFO, "EAP-PWD (peer): server sent id of",
			  data->id_server, data->id_server_len);

	data->grp = FUNC3(data->group_num);
	if (data->grp == NULL) {
		FUNC7(MSG_INFO, "EAP-PWD: failed to allocate memory for "
			   "group");
		FUNC2(data, FAILURE);
		return;
	}

	data->outbuf = FUNC8(sizeof(struct eap_pwd_id) +
				    data->id_peer_len);
	if (data->outbuf == NULL) {
		FUNC2(data, FAILURE);
		return;
	}
	FUNC9(data->outbuf, data->group_num);
	FUNC11(data->outbuf, EAP_PWD_DEFAULT_RAND_FUNC);
	FUNC11(data->outbuf, EAP_PWD_DEFAULT_PRF);
	FUNC10(data->outbuf, id->token, sizeof(id->token));
	FUNC11(data->outbuf, id->prep);
	FUNC10(data->outbuf, data->id_peer, data->id_peer_len);

	FUNC2(data, PWD_Commit_Req);
}