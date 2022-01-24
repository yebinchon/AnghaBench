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
struct radius_msg {int /*<<< orphan*/ * buf; int /*<<< orphan*/  hdr; } ;
struct radius_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RADIUS_DEFAULT_MSG_SIZE ; 
 struct radius_msg* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct radius_msg*) ; 
 scalar_t__ FUNC2 (struct radius_msg*) ; 
 int /*<<< orphan*/  FUNC3 (struct radius_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

struct radius_msg * FUNC6(u8 code, u8 identifier)
{
	struct radius_msg *msg;

	msg = FUNC0(sizeof(*msg));
	if (msg == NULL)
		return NULL;

	msg->buf = FUNC4(RADIUS_DEFAULT_MSG_SIZE);
	if (msg->buf == NULL || FUNC2(msg)) {
		FUNC1(msg);
		return NULL;
	}
	msg->hdr = FUNC5(msg->buf, sizeof(struct radius_hdr));

	FUNC3(msg, code, identifier);

	return msg;
}