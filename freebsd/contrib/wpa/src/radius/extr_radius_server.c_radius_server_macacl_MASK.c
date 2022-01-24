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
typedef  int /*<<< orphan*/  tmp ;
struct radius_session {struct hostapd_radius_attr* accept_attr; scalar_t__ username; } ;
struct radius_server_data {int (* get_eap_user ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct eap_user*) ;int /*<<< orphan*/  conf_ctx; } ;
struct radius_msg {int dummy; } ;
struct radius_hdr {int /*<<< orphan*/  authenticator; int /*<<< orphan*/  identifier; } ;
struct radius_client {int /*<<< orphan*/  shared_secret_len; scalar_t__ shared_secret; } ;
struct hostapd_radius_attr {int /*<<< orphan*/  val; int /*<<< orphan*/  type; struct hostapd_radius_attr* next; } ;
struct eap_user {int /*<<< orphan*/  password_len; int /*<<< orphan*/ * password; int /*<<< orphan*/  macacl; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  RADIUS_ATTR_PROXY_STATE ; 
 int /*<<< orphan*/  RADIUS_ATTR_USER_PASSWORD ; 
 int RADIUS_CODE_ACCESS_ACCEPT ; 
 int RADIUS_CODE_ACCESS_REJECT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_user*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct radius_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct radius_msg*,struct radius_msg*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct radius_msg*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct radius_msg*) ; 
 scalar_t__ FUNC9 (struct radius_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*,int /*<<< orphan*/ *) ; 
 struct radius_hdr* FUNC10 (struct radius_msg*) ; 
 struct radius_msg* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct radius_msg*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct eap_user*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct radius_msg *
FUNC17(struct radius_server_data *data,
		     struct radius_client *client,
		     struct radius_session *sess,
		     struct radius_msg *request)
{
	struct radius_msg *msg;
	int code;
	struct radius_hdr *hdr = FUNC10(request);
	u8 *pw;
	size_t pw_len;

	code = RADIUS_CODE_ACCESS_ACCEPT;

	if (FUNC9(request, RADIUS_ATTR_USER_PASSWORD, &pw,
				    &pw_len, NULL) < 0) {
		FUNC0("Could not get User-Password");
		code = RADIUS_CODE_ACCESS_REJECT;
	} else {
		int res;
		struct eap_user tmp;

		FUNC3(&tmp, 0, sizeof(tmp));
		res = data->get_eap_user(data->conf_ctx, (u8 *) sess->username,
					 FUNC4(sess->username), 0, &tmp);
		if (res || !tmp.macacl || tmp.password == NULL) {
			FUNC0("No MAC ACL user entry");
			FUNC1(tmp.password, tmp.password_len);
			code = RADIUS_CODE_ACCESS_REJECT;
		} else {
			u8 buf[128];
			res = FUNC12(
				request, tmp.password, tmp.password_len,
				(u8 *) client->shared_secret,
				client->shared_secret_len,
				buf, sizeof(buf));
			FUNC1(tmp.password, tmp.password_len);

			if (res < 0 || pw_len != (size_t) res ||
			    FUNC2(pw, buf, res) != 0) {
				FUNC0("Incorrect User-Password");
				code = RADIUS_CODE_ACCESS_REJECT;
			}
		}
	}

	msg = FUNC11(code, hdr->identifier);
	if (msg == NULL) {
		FUNC0("Failed to allocate reply message");
		return NULL;
	}

	if (FUNC6(msg, request, RADIUS_ATTR_PROXY_STATE) < 0) {
		FUNC0("Failed to copy Proxy-State attribute(s)");
		FUNC8(msg);
		return NULL;
	}

	if (code == RADIUS_CODE_ACCESS_ACCEPT) {
		struct hostapd_radius_attr *attr;
		for (attr = sess->accept_attr; attr; attr = attr->next) {
			if (!FUNC5(msg, attr->type,
						 FUNC15(attr->val),
						 FUNC16(attr->val))) {
				FUNC14(MSG_ERROR, "Could not add RADIUS attribute");
				FUNC8(msg);
				return NULL;
			}
		}
	}

	if (FUNC7(msg, (u8 *) client->shared_secret,
				  client->shared_secret_len,
				  hdr->authenticator) < 0) {
		FUNC0("Failed to add Message-Authenticator attribute");
	}

	return msg;
}