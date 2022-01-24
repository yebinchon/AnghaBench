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
struct ikev2_payloads {int /*<<< orphan*/  idr_len; scalar_t__ idr; } ;
struct TYPE_2__ {int /*<<< orphan*/  integ; int /*<<< orphan*/  encr; } ;
struct ikev2_initiator_data {int /*<<< orphan*/  keys; TYPE_1__ proposal; } ;
struct ikev2_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ikev2_hdr const*,int /*<<< orphan*/  const*,size_t,size_t*) ; 
 scalar_t__ FUNC1 (struct ikev2_payloads*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ikev2_initiator_data*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct ikev2_initiator_data *data,
				      const struct ikev2_hdr *hdr,
				      const u8 *encrypted,
				      size_t encrypted_len, u8 next_payload)
{
	u8 *decrypted;
	size_t decrypted_len;
	struct ikev2_payloads pl;
	int ret = 0;

	decrypted = FUNC0(data->proposal.encr,
					  data->proposal.integ, &data->keys, 0,
					  hdr, encrypted, encrypted_len,
					  &decrypted_len);
	if (decrypted == NULL)
		return -1;

	FUNC4(MSG_DEBUG, "IKEV2: Processing decrypted payloads");

	if (FUNC1(&pl, next_payload, decrypted,
				 decrypted + decrypted_len) < 0) {
		FUNC4(MSG_INFO, "IKEV2: Failed to parse decrypted "
			   "payloads");
		return -1;
	}

	if (pl.idr)
		ret = FUNC2(data, pl.idr, pl.idr_len);

	FUNC3(decrypted);

	return ret;
}