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
typedef  int u_int64_t ;
struct sshmac {int enabled; } ;
struct sshenc {int block_size; int /*<<< orphan*/  iv_len; int /*<<< orphan*/  iv; int /*<<< orphan*/  key_len; int /*<<< orphan*/  key; int /*<<< orphan*/  cipher; } ;
struct sshcomp {scalar_t__ type; int enabled; } ;
struct sshcipher_ctx {int dummy; } ;
struct ssh {TYPE_1__* kex; struct session_state* state; } ;
struct packet_state {scalar_t__ blocks; scalar_t__ packets; scalar_t__ bytes; } ;
struct session_state {int max_blocks_out; int max_blocks_in; int cipher_warning_done; int rekey_limit; scalar_t__ after_authentication; TYPE_2__** newkeys; struct packet_state p_send; struct packet_state p_read; struct sshcipher_ctx* receive_context; struct sshcipher_ctx* send_context; } ;
struct TYPE_4__ {struct sshcomp comp; struct sshmac mac; struct sshenc enc; } ;
struct TYPE_3__ {TYPE_2__** newkeys; } ;

/* Variables and functions */
 int CIPHER_DECRYPT ; 
 int CIPHER_ENCRYPT ; 
 scalar_t__ COMP_DELAYED ; 
 scalar_t__ COMP_ZLIB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int MODE_OUT ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sshcipher_ctx*) ; 
 int FUNC4 (struct sshcipher_ctx**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC5 (struct sshcipher_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int FUNC10 (struct sshmac*) ; 
 int FUNC11 (struct ssh*) ; 
 int FUNC12 (struct ssh*) ; 
 int FUNC13 (struct ssh*,int) ; 

int
FUNC14(struct ssh *ssh, int mode)
{
	struct session_state *state = ssh->state;
	struct sshenc *enc;
	struct sshmac *mac;
	struct sshcomp *comp;
	struct sshcipher_ctx **ccp;
	struct packet_state *ps;
	u_int64_t *max_blocks;
	const char *wmsg;
	int r, crypt_type;

	FUNC7("set_newkeys: mode %d", mode);

	if (mode == MODE_OUT) {
		ccp = &state->send_context;
		crypt_type = CIPHER_ENCRYPT;
		ps = &state->p_send;
		max_blocks = &state->max_blocks_out;
	} else {
		ccp = &state->receive_context;
		crypt_type = CIPHER_DECRYPT;
		ps = &state->p_read;
		max_blocks = &state->max_blocks_in;
	}
	if (state->newkeys[mode] != NULL) {
		FUNC6("set_newkeys: rekeying, input %llu bytes %llu blocks, "
		   "output %llu bytes %llu blocks",
		   (unsigned long long)state->p_read.bytes,
		   (unsigned long long)state->p_read.blocks,
		   (unsigned long long)state->p_send.bytes,
		   (unsigned long long)state->p_send.blocks);
		FUNC3(*ccp);
		*ccp = NULL;
		FUNC9(state->newkeys[mode]);
		state->newkeys[mode] = NULL;
	}
	/* note that both bytes and the seqnr are not reset */
	ps->packets = ps->blocks = 0;
	/* move newkeys from kex to state */
	if ((state->newkeys[mode] = ssh->kex->newkeys[mode]) == NULL)
		return SSH_ERR_INTERNAL_ERROR;
	ssh->kex->newkeys[mode] = NULL;
	enc  = &state->newkeys[mode]->enc;
	mac  = &state->newkeys[mode]->mac;
	comp = &state->newkeys[mode]->comp;
	if (FUNC2(enc->cipher) == 0) {
		if ((r = FUNC10(mac)) != 0)
			return r;
	}
	mac->enabled = 1;
	FUNC0(FUNC6("cipher_init_context: %d", mode));
	if ((r = FUNC4(ccp, enc->cipher, enc->key, enc->key_len,
	    enc->iv, enc->iv_len, crypt_type)) != 0)
		return r;
	if (!state->cipher_warning_done &&
	    (wmsg = FUNC5(*ccp)) != NULL) {
		FUNC8("Warning: %s", wmsg);
		state->cipher_warning_done = 1;
	}
	/* Deleting the keys does not gain extra security */
	/* explicit_bzero(enc->iv,  enc->block_size);
	   explicit_bzero(enc->key, enc->key_len);
	   explicit_bzero(mac->key, mac->key_len); */
	if ((comp->type == COMP_ZLIB ||
	    (comp->type == COMP_DELAYED &&
	     state->after_authentication)) && comp->enabled == 0) {
		if ((r = FUNC11(ssh)) < 0)
			return r;
		if (mode == MODE_OUT) {
			if ((r = FUNC13(ssh, 6)) != 0)
				return r;
		} else {
			if ((r = FUNC12(ssh)) != 0)
				return r;
		}
		comp->enabled = 1;
	}
	/*
	 * The 2^(blocksize*2) limit is too expensive for 3DES,
	 * so enforce a 1GB limit for small blocksizes.
	 * See RFC4344 section 3.2.
	 */
	if (enc->block_size >= 16)
		*max_blocks = (u_int64_t)1 << (enc->block_size*2);
	else
		*max_blocks = ((u_int64_t)1 << 30) / enc->block_size;
	if (state->rekey_limit)
		*max_blocks = FUNC1(*max_blocks,
		    state->rekey_limit / enc->block_size);
	FUNC6("rekey after %llu blocks", (unsigned long long)*max_blocks);
	return 0;
}