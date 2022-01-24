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
struct tlsv1_record_layer {scalar_t__ cipher_alg; int /*<<< orphan*/ * write_cbc; int /*<<< orphan*/  key_material_len; int /*<<< orphan*/  write_key; int /*<<< orphan*/  write_iv; int /*<<< orphan*/  write_seq_num; int /*<<< orphan*/  cipher_suite; int /*<<< orphan*/  write_cipher_suite; } ;

/* Variables and functions */
 scalar_t__ CRYPTO_CIPHER_NULL ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  TLS_SEQ_NUM_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC4(struct tlsv1_record_layer *rl)
{
	FUNC3(MSG_DEBUG, "TLSv1: Record Layer - New write cipher suite "
		   "0x%04x", rl->cipher_suite);
	rl->write_cipher_suite = rl->cipher_suite;
	FUNC2(rl->write_seq_num, 0, TLS_SEQ_NUM_LEN);

	if (rl->write_cbc) {
		FUNC0(rl->write_cbc);
		rl->write_cbc = NULL;
	}
	if (rl->cipher_alg != CRYPTO_CIPHER_NULL) {
		rl->write_cbc = FUNC1(rl->cipher_alg,
						   rl->write_iv, rl->write_key,
						   rl->key_material_len);
		if (rl->write_cbc == NULL) {
			FUNC3(MSG_DEBUG, "TLSv1: Failed to initialize "
				   "cipher");
			return -1;
		}
	}

	return 0;
}