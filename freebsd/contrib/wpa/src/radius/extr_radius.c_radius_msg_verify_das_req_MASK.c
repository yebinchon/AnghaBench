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
typedef  int /*<<< orphan*/  zero ;
struct radius_attr_hdr {scalar_t__ type; } ;
typedef  struct radius_attr_hdr u8 ;
struct radius_msg {size_t attr_used; TYPE_1__* hdr; int /*<<< orphan*/  buf; } ;
struct radius_hdr {int dummy; } ;
typedef  int /*<<< orphan*/  orig_authenticator ;
struct TYPE_2__ {struct radius_attr_hdr* authenticator; } ;

/* Variables and functions */
 int MD5_MAC_LEN ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 scalar_t__ RADIUS_ATTR_MESSAGE_AUTHENTICATOR ; 
 int /*<<< orphan*/  FUNC0 (struct radius_attr_hdr const*,size_t,int /*<<< orphan*/ ,int,struct radius_attr_hdr*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct radius_attr_hdr const**,size_t*,struct radius_attr_hdr*) ; 
 scalar_t__ FUNC2 (struct radius_attr_hdr*,struct radius_attr_hdr*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radius_attr_hdr*,struct radius_attr_hdr*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radius_attr_hdr*,int /*<<< orphan*/ ,int) ; 
 struct radius_attr_hdr* FUNC5 (struct radius_msg*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct radius_msg *msg, const u8 *secret,
			      size_t secret_len,
			      int require_message_authenticator)
{
	const u8 *addr[4];
	size_t len[4];
	u8 zero[MD5_MAC_LEN];
	u8 hash[MD5_MAC_LEN];
	u8 auth[MD5_MAC_LEN], orig[MD5_MAC_LEN];
	u8 orig_authenticator[16];

	struct radius_attr_hdr *attr = NULL, *tmp;
	size_t i;

	FUNC4(zero, 0, sizeof(zero));
	addr[0] = (u8 *) msg->hdr;
	len[0] = sizeof(struct radius_hdr) - MD5_MAC_LEN;
	addr[1] = zero;
	len[1] = MD5_MAC_LEN;
	addr[2] = (u8 *) (msg->hdr + 1);
	len[2] = FUNC8(msg->buf) - sizeof(struct radius_hdr);
	addr[3] = secret;
	len[3] = secret_len;
	FUNC1(4, addr, len, hash);
	if (FUNC2(msg->hdr->authenticator, hash, MD5_MAC_LEN) != 0)
		return 1;

	for (i = 0; i < msg->attr_used; i++) {
		tmp = FUNC5(msg, i);
		if (tmp->type == RADIUS_ATTR_MESSAGE_AUTHENTICATOR) {
			if (attr != NULL) {
				FUNC6(MSG_WARNING, "Multiple "
					   "Message-Authenticator attributes "
					   "in RADIUS message");
				return 1;
			}
			attr = tmp;
		}
	}

	if (attr == NULL) {
		if (require_message_authenticator) {
			FUNC6(MSG_WARNING,
				   "Missing Message-Authenticator attribute in RADIUS message");
			return 1;
		}
		return 0;
	}

	FUNC3(orig, attr + 1, MD5_MAC_LEN);
	FUNC4(attr + 1, 0, MD5_MAC_LEN);
	FUNC3(orig_authenticator, msg->hdr->authenticator,
		  sizeof(orig_authenticator));
	FUNC4(msg->hdr->authenticator, 0,
		  sizeof(msg->hdr->authenticator));
	FUNC0(secret, secret_len, FUNC7(msg->buf),
		 FUNC8(msg->buf), auth);
	FUNC3(attr + 1, orig, MD5_MAC_LEN);
	FUNC3(msg->hdr->authenticator, orig_authenticator,
		  sizeof(orig_authenticator));

	return FUNC2(orig, auth, MD5_MAC_LEN) != 0;
}