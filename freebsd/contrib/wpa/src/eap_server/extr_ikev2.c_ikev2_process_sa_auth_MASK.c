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
struct ikev2_payloads {int /*<<< orphan*/  encr_next_payload; int /*<<< orphan*/  encrypted_len; int /*<<< orphan*/  encrypted; } ;
struct TYPE_2__ {int /*<<< orphan*/  integ; int /*<<< orphan*/  encr; } ;
struct ikev2_initiator_data {int /*<<< orphan*/  state; int /*<<< orphan*/  unknown_user; int /*<<< orphan*/  keys; TYPE_1__ proposal; } ;
struct ikev2_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IKEV2_DONE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ikev2_hdr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 int FUNC1 (struct ikev2_initiator_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct ikev2_initiator_data *data,
				 const struct ikev2_hdr *hdr,
				 struct ikev2_payloads *pl)
{
	u8 *decrypted;
	size_t decrypted_len;
	int ret;

	decrypted = FUNC0(data->proposal.encr,
					  data->proposal.integ,
					  &data->keys, 0, hdr, pl->encrypted,
					  pl->encrypted_len, &decrypted_len);
	if (decrypted == NULL)
		return -1;

	ret = FUNC1(data, pl->encr_next_payload,
					      decrypted, decrypted_len);
	FUNC2(decrypted);

	if (ret == 0 && !data->unknown_user) {
		FUNC3(MSG_DEBUG, "IKEV2: Authentication completed");
		data->state = IKEV2_DONE;
	}

	return ret;
}