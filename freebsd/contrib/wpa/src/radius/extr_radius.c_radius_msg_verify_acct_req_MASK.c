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
typedef  int /*<<< orphan*/  u8 ;
struct radius_msg {TYPE_1__* hdr; int /*<<< orphan*/  buf; } ;
struct radius_hdr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  authenticator; } ;

/* Variables and functions */
 int MD5_MAC_LEN ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct radius_msg *msg, const u8 *secret,
			       size_t secret_len)
{
	const u8 *addr[4];
	size_t len[4];
	u8 zero[MD5_MAC_LEN];
	u8 hash[MD5_MAC_LEN];

	FUNC2(zero, 0, sizeof(zero));
	addr[0] = (u8 *) msg->hdr;
	len[0] = sizeof(struct radius_hdr) - MD5_MAC_LEN;
	addr[1] = zero;
	len[1] = MD5_MAC_LEN;
	addr[2] = (u8 *) (msg->hdr + 1);
	len[2] = FUNC3(msg->buf) - sizeof(struct radius_hdr);
	addr[3] = secret;
	len[3] = secret_len;
	FUNC0(4, addr, len, hash);
	return FUNC1(msg->hdr->authenticator, hash, MD5_MAC_LEN) != 0;
}