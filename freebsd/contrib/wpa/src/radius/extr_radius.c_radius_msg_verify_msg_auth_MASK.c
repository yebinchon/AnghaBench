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
typedef  struct radius_attr_hdr {scalar_t__ type; } const radius_attr_hdr ;
typedef  struct radius_attr_hdr const u8 ;
struct radius_msg {size_t attr_used; TYPE_1__* hdr; int /*<<< orphan*/  buf; } ;
typedef  int /*<<< orphan*/  orig_authenticator ;
struct TYPE_2__ {struct radius_attr_hdr const* authenticator; } ;

/* Variables and functions */
 int MD5_MAC_LEN ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ RADIUS_ATTR_MESSAGE_AUTHENTICATOR ; 
 scalar_t__ FUNC0 (struct radius_attr_hdr const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct radius_attr_hdr const*) ; 
 scalar_t__ FUNC1 (struct radius_attr_hdr const*,struct radius_attr_hdr const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radius_attr_hdr const*,struct radius_attr_hdr const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radius_attr_hdr const*,int /*<<< orphan*/ ,int) ; 
 struct radius_attr_hdr const* FUNC4 (struct radius_msg*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct radius_msg *msg, const u8 *secret,
			       size_t secret_len, const u8 *req_auth)
{
	u8 auth[MD5_MAC_LEN], orig[MD5_MAC_LEN];
	u8 orig_authenticator[16];
	struct radius_attr_hdr *attr = NULL, *tmp;
	size_t i;

	for (i = 0; i < msg->attr_used; i++) {
		tmp = FUNC4(msg, i);
		if (tmp->type == RADIUS_ATTR_MESSAGE_AUTHENTICATOR) {
			if (attr != NULL) {
				FUNC5(MSG_INFO, "Multiple Message-Authenticator attributes in RADIUS message");
				return 1;
			}
			attr = tmp;
		}
	}

	if (attr == NULL) {
		FUNC5(MSG_INFO, "No Message-Authenticator attribute found");
		return 1;
	}

	FUNC2(orig, attr + 1, MD5_MAC_LEN);
	FUNC3(attr + 1, 0, MD5_MAC_LEN);
	if (req_auth) {
		FUNC2(orig_authenticator, msg->hdr->authenticator,
			  sizeof(orig_authenticator));
		FUNC2(msg->hdr->authenticator, req_auth,
			  sizeof(msg->hdr->authenticator));
	}
	if (FUNC0(secret, secret_len, FUNC6(msg->buf),
		     FUNC7(msg->buf), auth) < 0)
		return 1;
	FUNC2(attr + 1, orig, MD5_MAC_LEN);
	if (req_auth) {
		FUNC2(msg->hdr->authenticator, orig_authenticator,
			  sizeof(orig_authenticator));
	}

	if (FUNC1(orig, auth, MD5_MAC_LEN) != 0) {
		FUNC5(MSG_INFO, "Invalid Message-Authenticator!");
		return 1;
	}

	return 0;
}