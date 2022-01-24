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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct eap_sim_msg {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 

u8 * FUNC6(struct eap_sim_msg *msg, u8 attr, u16 value,
		     const u8 *data, size_t len)
{
	int attr_len = 4 + len;
	int pad_len;
	u8 *start;

	if (msg == NULL)
		return NULL;

	pad_len = (4 - attr_len % 4) % 4;
	attr_len += pad_len;
	if (FUNC5(&msg->buf, attr_len))
		return NULL;
	start = FUNC1(msg->buf, 0);
	FUNC4(msg->buf, attr);
	FUNC4(msg->buf, attr_len / 4);
	FUNC2(msg->buf, value);
	if (data)
		FUNC3(msg->buf, data, len);
	else
		FUNC1(msg->buf, len);
	if (pad_len)
		FUNC0(FUNC1(msg->buf, pad_len), 0, pad_len);
	return start;
}