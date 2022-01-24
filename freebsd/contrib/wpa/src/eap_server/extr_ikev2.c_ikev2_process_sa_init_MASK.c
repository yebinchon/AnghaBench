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
struct ikev2_payloads {int /*<<< orphan*/  encr_next_payload; int /*<<< orphan*/  encrypted_len; scalar_t__ encrypted; int /*<<< orphan*/  nonce_len; int /*<<< orphan*/  nonce; int /*<<< orphan*/  ke_len; int /*<<< orphan*/  ke; int /*<<< orphan*/  sa_len; int /*<<< orphan*/  sa; } ;
struct ikev2_initiator_data {int /*<<< orphan*/  state; int /*<<< orphan*/  r_spi; } ;
struct ikev2_hdr {int /*<<< orphan*/  r_spi; } ;

/* Variables and functions */
 int /*<<< orphan*/  IKEV2_SPI_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  SA_AUTH ; 
 scalar_t__ FUNC0 (struct ikev2_initiator_data*) ; 
 scalar_t__ FUNC1 (struct ikev2_initiator_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ikev2_initiator_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ikev2_initiator_data*,struct ikev2_hdr const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct ikev2_initiator_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC7(struct ikev2_initiator_data *data,
				 const struct ikev2_hdr *hdr,
				 struct ikev2_payloads *pl)
{
	if (FUNC4(data, pl->sa, pl->sa_len) < 0 ||
	    FUNC1(data, pl->ke, pl->ke_len) < 0 ||
	    FUNC2(data, pl->nonce, pl->nonce_len) < 0)
		return -1;

	FUNC5(data->r_spi, hdr->r_spi, IKEV2_SPI_LEN);

	if (FUNC0(data) < 0)
		return -1;

	if (pl->encrypted) {
		FUNC6(MSG_DEBUG, "IKEV2: Encrypted payload in SA_INIT - "
			   "try to get IDr from it");
		if (FUNC3(data, hdr, pl->encrypted,
					       pl->encrypted_len,
					       pl->encr_next_payload) < 0) {
			FUNC6(MSG_INFO, "IKEV2: Failed to process "
				   "encrypted payload");
			return -1;
		}
	}

	data->state = SA_AUTH;

	return 0;
}