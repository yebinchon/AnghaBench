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
struct radius_hdr {int /*<<< orphan*/  authenticator; } ;
struct radius_attr_hdr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  authenticator; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int MD5_MAC_LEN ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  RADIUS_ATTR_MESSAGE_AUTHENTICATOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct radius_attr_hdr* FUNC5 (struct radius_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct radius_msg *msg, const u8 *secret,
			       size_t secret_len,
			       const struct radius_hdr *req_hdr)
{
	const u8 *addr[2];
	size_t len[2];
	u8 auth[MD5_MAC_LEN];
	struct radius_attr_hdr *attr;

	FUNC4(auth, 0, MD5_MAC_LEN);
	attr = FUNC5(msg, RADIUS_ATTR_MESSAGE_AUTHENTICATOR,
				   auth, MD5_MAC_LEN);
	if (attr == NULL) {
		FUNC6(MSG_WARNING, "Could not add Message-Authenticator");
		return -1;
	}

	msg->hdr->length = FUNC1(FUNC9(msg->buf));
	FUNC3(msg->hdr->authenticator, req_hdr->authenticator, 16);
	FUNC0(secret, secret_len, FUNC7(msg->buf),
		 FUNC9(msg->buf), (u8 *) (attr + 1));

	/* ResponseAuth = MD5(Code+ID+Length+RequestAuth+Attributes+Secret) */
	addr[0] = FUNC8(msg->buf);
	len[0] = FUNC9(msg->buf);
	addr[1] = secret;
	len[1] = secret_len;
	if (FUNC2(2, addr, len, msg->hdr->authenticator) < 0)
		return -1;

	if (FUNC9(msg->buf) > 0xffff) {
		FUNC6(MSG_WARNING, "RADIUS: Too long message (%lu)",
			   (unsigned long) FUNC9(msg->buf));
		return -1;
	}
	return 0;
}