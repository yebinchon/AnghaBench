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
typedef  int /*<<< orphan*/  u8 ;
struct radius_msg {int /*<<< orphan*/  buf; TYPE_1__* hdr; } ;
struct radius_hdr {int dummy; } ;
struct radius_attr_hdr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  authenticator; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int MD5_MAC_LEN ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  RADIUS_ATTR_MESSAGE_AUTHENTICATOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct radius_attr_hdr* FUNC5 (struct radius_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct radius_msg *msg, const u8 *secret,
			  size_t secret_len, const u8 *req_authenticator)
{
	u8 auth[MD5_MAC_LEN];
	struct radius_attr_hdr *attr;
	const u8 *addr[4];
	size_t len[4];

	FUNC4(auth, 0, MD5_MAC_LEN);
	attr = FUNC5(msg, RADIUS_ATTR_MESSAGE_AUTHENTICATOR,
				   auth, MD5_MAC_LEN);
	if (attr == NULL) {
		FUNC6(MSG_ERROR, "WARNING: Could not add Message-Authenticator");
		return -1;
	}
	msg->hdr->length = FUNC1(FUNC9(msg->buf));
	FUNC3(msg->hdr->authenticator, req_authenticator,
		  sizeof(msg->hdr->authenticator));
	FUNC0(secret, secret_len, FUNC7(msg->buf),
		 FUNC9(msg->buf), (u8 *) (attr + 1));

	/* ResponseAuth = MD5(Code+ID+Length+RequestAuth+Attributes+Secret) */
	addr[0] = (u8 *) msg->hdr;
	len[0] = 1 + 1 + 2;
	addr[1] = req_authenticator;
	len[1] = MD5_MAC_LEN;
	addr[2] = FUNC8(msg->buf) + sizeof(struct radius_hdr);
	len[2] = FUNC9(msg->buf) - sizeof(struct radius_hdr);
	addr[3] = secret;
	len[3] = secret_len;
	FUNC2(4, addr, len, msg->hdr->authenticator);

	if (FUNC9(msg->buf) > 0xffff) {
		FUNC6(MSG_WARNING, "RADIUS: Too long message (%lu)",
			   (unsigned long) FUNC9(msg->buf));
		return -1;
	}
	return 0;
}