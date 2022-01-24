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
struct radius_attr_hdr {int dummy; } ;
struct TYPE_2__ {void* length; } ;

/* Variables and functions */
 int MD5_MAC_LEN ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  RADIUS_ATTR_MESSAGE_AUTHENTICATOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct radius_attr_hdr* FUNC3 (struct radius_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct radius_msg *msg, const u8 *secret,
		      size_t secret_len)
{
	if (secret) {
		u8 auth[MD5_MAC_LEN];
		struct radius_attr_hdr *attr;

		FUNC2(auth, 0, MD5_MAC_LEN);
		attr = FUNC3(msg,
					   RADIUS_ATTR_MESSAGE_AUTHENTICATOR,
					   auth, MD5_MAC_LEN);
		if (attr == NULL) {
			FUNC4(MSG_WARNING, "RADIUS: Could not add "
				   "Message-Authenticator");
			return -1;
		}
		msg->hdr->length = FUNC1(FUNC6(msg->buf));
		FUNC0(secret, secret_len, FUNC5(msg->buf),
			 FUNC6(msg->buf), (u8 *) (attr + 1));
	} else
		msg->hdr->length = FUNC1(FUNC6(msg->buf));

	if (FUNC6(msg->buf) > 0xffff) {
		FUNC4(MSG_WARNING, "RADIUS: Too long message (%lu)",
			   (unsigned long) FUNC6(msg->buf));
		return -1;
	}
	return 0;
}