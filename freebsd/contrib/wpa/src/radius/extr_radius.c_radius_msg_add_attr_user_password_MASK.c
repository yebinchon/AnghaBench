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
struct radius_msg {int dummy; } ;
struct radius_attr_hdr {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  RADIUS_ATTR_USER_PASSWORD ; 
 struct radius_attr_hdr* FUNC0 (struct radius_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct radius_msg*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,int) ; 

struct radius_attr_hdr *
FUNC2(struct radius_msg *msg,
				  const u8 *data, size_t data_len,
				  const u8 *secret, size_t secret_len)
{
	u8 buf[128];
	int res;

	res = FUNC1(msg, data, data_len,
					secret, secret_len, buf, sizeof(buf));
	if (res < 0)
		return NULL;

	return FUNC0(msg, RADIUS_ATTR_USER_PASSWORD,
				   buf, res);
}