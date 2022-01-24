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
typedef  int /*<<< orphan*/  u8 ;
typedef  long u16 ;
struct TYPE_3__ {long dh; } ;
struct ikev2_initiator_data {int /*<<< orphan*/ * r_dh_public; TYPE_2__* dh; TYPE_1__ proposal; } ;
struct TYPE_4__ {size_t prime_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 long FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ikev2_initiator_data *data,
			     const u8 *ker, size_t ker_len)
{
	u16 group;

	/*
	 * Key Exchange Payload:
	 * DH Group # (16 bits)
	 * RESERVED (16 bits)
	 * Key Exchange Data (Diffie-Hellman public value)
	 */

	if (ker == NULL) {
		FUNC2(MSG_INFO, "IKEV2: KEr not received");
		return -1;
	}

	if (ker_len < 4 + 96) {
		FUNC2(MSG_INFO, "IKEV2: Too show Key Exchange Payload");
		return -1;
	}

	group = FUNC0(ker);
	FUNC2(MSG_DEBUG, "IKEV2: KEr DH Group #%u", group);

	if (group != data->proposal.dh) {
		FUNC2(MSG_DEBUG, "IKEV2: KEr DH Group #%u does not match "
			   "with the selected proposal (%u)",
			   group, data->proposal.dh);
		return -1;
	}

	if (data->dh == NULL) {
		FUNC2(MSG_INFO, "IKEV2: Unsupported DH group");
		return -1;
	}

	/* RFC 4306, Section 3.4:
	 * The length of DH public value MUST be equal to the length of the
	 * prime modulus.
	 */
	if (ker_len - 4 != data->dh->prime_len) {
		FUNC2(MSG_INFO, "IKEV2: Invalid DH public value length "
			   "%ld (expected %ld)",
			   (long) (ker_len - 4), (long) data->dh->prime_len);
		return -1;
	}

	FUNC4(data->r_dh_public);
	data->r_dh_public = FUNC3(ker + 4, ker_len - 4);
	if (data->r_dh_public == NULL)
		return -1;

	FUNC1(MSG_DEBUG, "IKEV2: KEr Diffie-Hellman Public Value",
			data->r_dh_public);
	
	return 0;
}