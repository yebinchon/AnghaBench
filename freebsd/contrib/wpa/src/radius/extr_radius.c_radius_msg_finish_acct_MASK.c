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
struct TYPE_2__ {int /*<<< orphan*/  authenticator; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  MD5_MAC_LEN ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct radius_msg *msg, const u8 *secret,
			    size_t secret_len)
{
	const u8 *addr[2];
	size_t len[2];

	msg->hdr->length = FUNC0(FUNC5(msg->buf));
	FUNC2(msg->hdr->authenticator, 0, MD5_MAC_LEN);
	addr[0] = FUNC4(msg->buf);
	len[0] = FUNC5(msg->buf);
	addr[1] = secret;
	len[1] = secret_len;
	FUNC1(2, addr, len, msg->hdr->authenticator);

	if (FUNC5(msg->buf) > 0xffff) {
		FUNC3(MSG_WARNING, "RADIUS: Too long messages (%lu)",
			   (unsigned long) FUNC5(msg->buf));
	}
}