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
typedef  int u32 ;
struct eap_ikev2_data {int /*<<< orphan*/ * in_buf; } ;

/* Variables and functions */
 int IKEV2_FLAGS_LENGTH_INCLUDED ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int const*,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct eap_ikev2_data *data,
				      u8 flags, u32 message_length,
				      const u8 *buf, size_t len)
{
	/* Process a fragment that is not the last one of the message */
	if (data->in_buf == NULL && !(flags & IKEV2_FLAGS_LENGTH_INCLUDED)) {
		FUNC0(MSG_DEBUG, "EAP-IKEV2: No Message Length field in "
			   "a fragmented packet");
		return -1;
	}

	if (data->in_buf == NULL) {
		/* First fragment of the message */
		if (message_length > 50000) {
			/* Limit maximum memory allocation */
			FUNC0(MSG_DEBUG,
				   "EAP-IKEV2: Ignore too long message");
			return -1;
		}
		data->in_buf = FUNC1(message_length);
		if (data->in_buf == NULL) {
			FUNC0(MSG_DEBUG, "EAP-IKEV2: No memory for "
				   "message");
			return -1;
		}
		FUNC2(data->in_buf, buf, len);
		FUNC0(MSG_DEBUG, "EAP-IKEV2: Received %lu bytes in first "
			   "fragment, waiting for %lu bytes more",
			   (unsigned long) len,
			   (unsigned long) FUNC3(data->in_buf));
	}

	return 0;
}