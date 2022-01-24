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
typedef  int /*<<< orphan*/  const u8 ;
struct TYPE_2__ {int hash_size; int key_material_len; int iv_size; int /*<<< orphan*/  const* write_iv; int /*<<< orphan*/  const* read_iv; int /*<<< orphan*/  const* write_key; int /*<<< orphan*/  const* read_key; int /*<<< orphan*/  const* write_mac_secret; int /*<<< orphan*/  const* read_mac_secret; int /*<<< orphan*/  tls_version; } ;
struct tlsv1_server {TYPE_1__ rl; int /*<<< orphan*/  const* master_secret; int /*<<< orphan*/  const* client_random; int /*<<< orphan*/  const* server_random; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 size_t TLS_MASTER_SECRET_LEN ; 
 int TLS_MAX_KEY_BLOCK_LEN ; 
 int TLS_RANDOM_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,char*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

int FUNC4(struct tlsv1_server *conn,
			     const u8 *pre_master_secret,
			     size_t pre_master_secret_len)
{
	u8 seed[2 * TLS_RANDOM_LEN];
	u8 key_block[TLS_MAX_KEY_BLOCK_LEN];
	u8 *pos;
	size_t key_block_len;

	if (pre_master_secret) {
		FUNC2(MSG_MSGDUMP, "TLSv1: pre_master_secret",
				pre_master_secret, pre_master_secret_len);
		FUNC0(seed, conn->client_random, TLS_RANDOM_LEN);
		FUNC0(seed + TLS_RANDOM_LEN, conn->server_random,
			  TLS_RANDOM_LEN);
		if (FUNC1(conn->rl.tls_version,
			    pre_master_secret, pre_master_secret_len,
			    "master secret", seed, 2 * TLS_RANDOM_LEN,
			    conn->master_secret, TLS_MASTER_SECRET_LEN)) {
			FUNC3(MSG_DEBUG, "TLSv1: Failed to derive "
				   "master_secret");
			return -1;
		}
		FUNC2(MSG_MSGDUMP, "TLSv1: master_secret",
				conn->master_secret, TLS_MASTER_SECRET_LEN);
	}

	FUNC0(seed, conn->server_random, TLS_RANDOM_LEN);
	FUNC0(seed + TLS_RANDOM_LEN, conn->client_random, TLS_RANDOM_LEN);
	key_block_len = 2 * (conn->rl.hash_size + conn->rl.key_material_len +
			     conn->rl.iv_size);
	if (FUNC1(conn->rl.tls_version,
		    conn->master_secret, TLS_MASTER_SECRET_LEN,
		    "key expansion", seed, 2 * TLS_RANDOM_LEN,
		    key_block, key_block_len)) {
		FUNC3(MSG_DEBUG, "TLSv1: Failed to derive key_block");
		return -1;
	}
	FUNC2(MSG_MSGDUMP, "TLSv1: key_block",
			key_block, key_block_len);

	pos = key_block;

	/* client_write_MAC_secret */
	FUNC0(conn->rl.read_mac_secret, pos, conn->rl.hash_size);
	pos += conn->rl.hash_size;
	/* server_write_MAC_secret */
	FUNC0(conn->rl.write_mac_secret, pos, conn->rl.hash_size);
	pos += conn->rl.hash_size;

	/* client_write_key */
	FUNC0(conn->rl.read_key, pos, conn->rl.key_material_len);
	pos += conn->rl.key_material_len;
	/* server_write_key */
	FUNC0(conn->rl.write_key, pos, conn->rl.key_material_len);
	pos += conn->rl.key_material_len;

	/* client_write_IV */
	FUNC0(conn->rl.read_iv, pos, conn->rl.iv_size);
	pos += conn->rl.iv_size;
	/* server_write_IV */
	FUNC0(conn->rl.write_iv, pos, conn->rl.iv_size);
	pos += conn->rl.iv_size;

	return 0;
}