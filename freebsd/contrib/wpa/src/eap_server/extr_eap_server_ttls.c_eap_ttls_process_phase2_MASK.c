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
struct eap_ttls_data {scalar_t__ tnc_started; TYPE_1__ ssl; struct wpabuf* pending_phase2_eap_resp; } ;
struct eap_ttls_avp {int user_name_len; char* eap; int /*<<< orphan*/  mschap2_response_len; scalar_t__ mschap2_response; int /*<<< orphan*/  mschap_challenge_len; int /*<<< orphan*/  mschap_challenge; int /*<<< orphan*/  mschap_response_len; scalar_t__ mschap_response; int /*<<< orphan*/  chap_password_len; scalar_t__ chap_password; int /*<<< orphan*/  chap_challenge_len; int /*<<< orphan*/  chap_challenge; int /*<<< orphan*/  user_password_len; scalar_t__ user_password; scalar_t__ eap_len; scalar_t__ user_name; } ;
struct eap_sm {char* identity; int identity_len; int /*<<< orphan*/  ssl_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct eap_sm*,char*,char*) ; 
 scalar_t__ FUNC1 (struct wpabuf*,struct eap_ttls_avp*) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_sm*,struct eap_ttls_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sm*,struct eap_ttls_data*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct eap_sm*,struct eap_ttls_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct eap_sm*,struct eap_ttls_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct eap_sm*,struct eap_ttls_data*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct eap_ttls_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct eap_sm*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (int) ; 
 char* FUNC11 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,scalar_t__,int) ; 
 struct wpabuf* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (struct wpabuf*) ; 
 char* FUNC17 (struct wpabuf*) ; 
 scalar_t__ FUNC18 (struct wpabuf*) ; 

__attribute__((used)) static void FUNC19(struct eap_sm *sm,
				    struct eap_ttls_data *data,
				    struct wpabuf *in_buf)
{
	struct wpabuf *in_decrypted;
	struct eap_ttls_avp parse;

	FUNC15(MSG_DEBUG, "EAP-TTLS: received %lu bytes encrypted data for"
		   " Phase 2", (unsigned long) FUNC18(in_buf));

	if (data->pending_phase2_eap_resp) {
		FUNC15(MSG_DEBUG, "EAP-TTLS: Pending Phase 2 EAP response "
			   "- skip decryption and use old data");
		FUNC3(
			sm, data, FUNC17(data->pending_phase2_eap_resp),
			FUNC18(data->pending_phase2_eap_resp));
		FUNC16(data->pending_phase2_eap_resp);
		data->pending_phase2_eap_resp = NULL;
		return;
	}

	in_decrypted = FUNC13(sm->ssl_ctx, data->ssl.conn,
					      in_buf);
	if (in_decrypted == NULL) {
		FUNC15(MSG_INFO, "EAP-TTLS: Failed to decrypt Phase 2 "
			   "data");
		FUNC7(data, FAILURE);
		return;
	}

	FUNC14(MSG_DEBUG, "EAP-TTLS: Decrypted Phase 2 EAP",
			    in_decrypted);

	if (FUNC1(in_decrypted, &parse) < 0) {
		FUNC15(MSG_DEBUG, "EAP-TTLS: Failed to parse AVPs");
		FUNC16(in_decrypted);
		FUNC7(data, FAILURE);
		return;
	}

	if (parse.user_name) {
		char *nbuf;
		nbuf = FUNC10(parse.user_name_len * 4 + 1);
		if (nbuf) {
			FUNC12(nbuf, parse.user_name_len * 4 + 1,
				      parse.user_name,
				      parse.user_name_len);
			FUNC0(sm, "TTLS-User-Name '%s'", nbuf);
			FUNC9(nbuf);
		}

		FUNC9(sm->identity);
		sm->identity = FUNC11(parse.user_name, parse.user_name_len);
		if (sm->identity == NULL) {
			FUNC7(data, FAILURE);
			goto done;
		}
		sm->identity_len = parse.user_name_len;
		if (FUNC8(sm, parse.user_name, parse.user_name_len, 1)
		    != 0) {
			FUNC15(MSG_DEBUG, "EAP-TTLS: Phase2 Identity not "
				   "found in the user database");
			FUNC7(data, FAILURE);
			goto done;
		}
	}

#ifdef EAP_SERVER_TNC
	if (data->tnc_started && parse.eap == NULL) {
		wpa_printf(MSG_DEBUG, "EAP-TTLS: TNC started but no EAP "
			   "response from peer");
		eap_ttls_state(data, FAILURE);
		goto done;
	}
#endif /* EAP_SERVER_TNC */

	if (parse.eap) {
		FUNC3(sm, data, parse.eap,
					    parse.eap_len);
	} else if (parse.user_password) {
		FUNC6(sm, data, parse.user_password,
					    parse.user_password_len);
	} else if (parse.chap_password) {
		FUNC2(sm, data,
					     parse.chap_challenge,
					     parse.chap_challenge_len,
					     parse.chap_password,
					     parse.chap_password_len);
	} else if (parse.mschap_response) {
		FUNC4(sm, data,
					       parse.mschap_challenge,
					       parse.mschap_challenge_len,
					       parse.mschap_response,
					       parse.mschap_response_len);
	} else if (parse.mschap2_response) {
		FUNC5(sm, data,
						 parse.mschap_challenge,
						 parse.mschap_challenge_len,
						 parse.mschap2_response,
						 parse.mschap2_response_len);
	}

done:
	FUNC16(in_decrypted);
	FUNC9(parse.eap);
}