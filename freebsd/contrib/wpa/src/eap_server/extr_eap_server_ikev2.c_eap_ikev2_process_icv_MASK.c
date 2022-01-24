#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  integ; } ;
struct TYPE_4__ {int /*<<< orphan*/  keys; TYPE_1__ proposal; } ;
struct eap_ikev2_data {scalar_t__ keys_ready; TYPE_2__ ikev2; } ;

/* Variables and functions */
 int IKEV2_FLAGS_ICV_INCLUDED ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct wpabuf const*,int const*,int const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(struct eap_ikev2_data *data,
				 const struct wpabuf *respData,
				 u8 flags, const u8 *pos, const u8 **end,
				 int frag_ack)
{
	if (flags & IKEV2_FLAGS_ICV_INCLUDED) {
		int icv_len = FUNC0(
			data->ikev2.proposal.integ, &data->ikev2.keys, 0,
			respData, pos, *end);
		if (icv_len < 0)
			return -1;
		/* Hide Integrity Checksum Data from further processing */
		*end -= icv_len;
	} else if (data->keys_ready && !frag_ack) {
		FUNC1(MSG_INFO, "EAP-IKEV2: The message should have "
			   "included integrity checksum");
		return -1;
	}

	return 0;
}