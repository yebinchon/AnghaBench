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
struct ikev2_responder_data {int /*<<< orphan*/ * i_dh_public; TYPE_2__* dh; int /*<<< orphan*/  state; int /*<<< orphan*/  error_type; TYPE_1__ proposal; } ;
struct TYPE_4__ {size_t prime_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  INVALID_KE_PAYLOAD ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  NOTIFY ; 
 long FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static int FUNC6(struct ikev2_responder_data *data,
			     const u8 *kei, size_t kei_len)
{
	u16 group;

	/*
	 * Key Exchange Payload:
	 * DH Group # (16 bits)
	 * RESERVED (16 bits)
	 * Key Exchange Data (Diffie-Hellman public value)
	 */

	if (kei == NULL) {
		FUNC2(MSG_INFO, "IKEV2: KEi not received");
		return -1;
	}

	if (kei_len < 4 + 96) {
		FUNC2(MSG_INFO, "IKEV2: Too short Key Exchange Payload");
		return -1;
	}

	group = FUNC0(kei);
	FUNC2(MSG_DEBUG, "IKEV2: KEi DH Group #%u", group);

	if (group != data->proposal.dh) {
		FUNC2(MSG_DEBUG, "IKEV2: KEi DH Group #%u does not match "
			   "with the selected proposal (%u)",
			   group, data->proposal.dh);
		/* Reject message with Notify payload of type
		 * INVALID_KE_PAYLOAD (RFC 4306, Sect. 3.4) */
		data->error_type = INVALID_KE_PAYLOAD;
		data->state = NOTIFY;
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
	if (kei_len - 4 != data->dh->prime_len) {
		FUNC2(MSG_INFO, "IKEV2: Invalid DH public value length "
			   "%ld (expected %ld)",
			   (long) (kei_len - 4), (long) data->dh->prime_len);
		return -1;
	}

	FUNC4(data->i_dh_public);
	data->i_dh_public = FUNC3(kei_len - 4);
	if (data->i_dh_public == NULL)
		return -1;
	FUNC5(data->i_dh_public, kei + 4, kei_len - 4);

	FUNC1(MSG_DEBUG, "IKEV2: KEi Diffie-Hellman Public Value",
			data->i_dh_public);
	
	return 0;
}