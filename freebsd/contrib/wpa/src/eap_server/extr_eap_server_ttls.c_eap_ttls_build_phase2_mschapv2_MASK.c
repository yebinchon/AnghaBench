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
struct eap_ttls_data {int /*<<< orphan*/  ssl; int /*<<< orphan*/  mschapv2_auth_response; int /*<<< orphan*/  mschapv2_ident; scalar_t__ mschapv2_resp_ok; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  RADIUS_ATTR_MS_CHAP2_SUCCESS ; 
 int /*<<< orphan*/  RADIUS_ATTR_MS_CHAP_ERROR ; 
 int /*<<< orphan*/  RADIUS_VENDOR_ID_MICROSOFT ; 
 struct wpabuf* FUNC1 (struct eap_sm*,int /*<<< orphan*/ *,struct wpabuf*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC6 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct wpabuf * FUNC11(
	struct eap_sm *sm, struct eap_ttls_data *data)
{
	struct wpabuf *encr_req, msgbuf;
	u8 *req, *pos, *end;
	int ret;

	pos = req = FUNC4(100);
	if (req == NULL)
		return NULL;
	end = req + 100;

	if (data->mschapv2_resp_ok) {
		pos = FUNC2(pos, RADIUS_ATTR_MS_CHAP2_SUCCESS,
				       RADIUS_VENDOR_ID_MICROSOFT, 1, 43);
		*pos++ = data->mschapv2_ident;
		ret = FUNC6((char *) pos, end - pos, "S=");
		if (!FUNC7(end - pos, ret))
			pos += ret;
		pos += FUNC9(
			(char *) pos, end - pos, data->mschapv2_auth_response,
			sizeof(data->mschapv2_auth_response));
	} else {
		pos = FUNC2(pos, RADIUS_ATTR_MS_CHAP_ERROR,
				       RADIUS_VENDOR_ID_MICROSOFT, 1, 6);
		FUNC5(pos, "Failed", 6);
		pos += 6;
		FUNC0(req, pos);
	}

	FUNC10(&msgbuf, req, pos - req);
	FUNC8(MSG_DEBUG, "EAP-TTLS/MSCHAPV2: Encrypting Phase 2 "
			    "data", &msgbuf);

	encr_req = FUNC1(sm, &data->ssl, &msgbuf);
	FUNC3(req);

	return encr_req;
}