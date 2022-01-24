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
struct radius_msg {int /*<<< orphan*/  buf; int /*<<< orphan*/  hdr; } ;
struct radius_attr_hdr {int length; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 size_t RADIUS_MAX_ATTR_LEN ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (struct radius_msg*,struct radius_attr_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct radius_attr_hdr* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 

struct radius_attr_hdr *FUNC8(struct radius_msg *msg, u8 type,
					    const u8 *data, size_t data_len)
{
	size_t buf_needed;
	struct radius_attr_hdr *attr;

	if (FUNC0())
		return NULL;

	if (data_len > RADIUS_MAX_ATTR_LEN) {
		FUNC2(MSG_ERROR, "radius_msg_add_attr: too long attribute (%lu bytes)",
		       (unsigned long) data_len);
		return NULL;
	}

	buf_needed = sizeof(*attr) + data_len;

	if (FUNC7(msg->buf) < buf_needed) {
		/* allocate more space for message buffer */
		if (FUNC6(&msg->buf, buf_needed) < 0)
			return NULL;
		msg->hdr = FUNC3(msg->buf);
	}

	attr = FUNC4(msg->buf, sizeof(struct radius_attr_hdr));
	attr->type = type;
	attr->length = sizeof(*attr) + data_len;
	FUNC5(msg->buf, data, data_len);

	if (FUNC1(msg, attr))
		return NULL;

	return attr;
}