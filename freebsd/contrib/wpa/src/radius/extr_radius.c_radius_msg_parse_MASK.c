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
struct radius_hdr {int /*<<< orphan*/  length; } ;
struct radius_attr_hdr {int length; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 struct radius_msg* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct radius_msg*,struct radius_attr_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct radius_msg*) ; 
 scalar_t__ FUNC4 (struct radius_msg*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*,size_t) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC9 (int /*<<< orphan*/ *) ; 

struct radius_msg * FUNC10(const u8 *data, size_t len)
{
	struct radius_msg *msg;
	struct radius_hdr *hdr;
	struct radius_attr_hdr *attr;
	size_t msg_len;
	unsigned char *pos, *end;

	if (data == NULL || len < sizeof(*hdr))
		return NULL;

	hdr = (struct radius_hdr *) data;

	msg_len = FUNC0(hdr->length);
	if (msg_len < sizeof(*hdr) || msg_len > len) {
		FUNC5(MSG_INFO, "RADIUS: Invalid message length");
		return NULL;
	}

	if (msg_len < len) {
		FUNC5(MSG_DEBUG, "RADIUS: Ignored %lu extra bytes after "
			   "RADIUS message", (unsigned long) len - msg_len);
	}

	msg = FUNC1(sizeof(*msg));
	if (msg == NULL)
		return NULL;

	msg->buf = FUNC6(data, msg_len);
	if (msg->buf == NULL || FUNC4(msg)) {
		FUNC3(msg);
		return NULL;
	}
	msg->hdr = FUNC8(msg->buf);

	/* parse attributes */
	pos = FUNC9(msg->buf) + sizeof(struct radius_hdr);
	end = FUNC9(msg->buf) + FUNC7(msg->buf);
	while (pos < end) {
		if ((size_t) (end - pos) < sizeof(*attr))
			goto fail;

		attr = (struct radius_attr_hdr *) pos;

		if (attr->length > end - pos || attr->length < sizeof(*attr))
			goto fail;

		/* TODO: check that attr->length is suitable for attr->type */

		if (FUNC2(msg, attr))
			goto fail;

		pos += attr->length;
	}

	return msg;

 fail:
	FUNC3(msg);
	return NULL;
}