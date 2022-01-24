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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  seed ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_FAST_PAC_KEY_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  TLS_MASTER_SECRET_LEN ; 
 int TLS_RANDOM_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(const u8 *pac_key, const u8 *server_random,
				   const u8 *client_random, u8 *master_secret)
{
#define TLS_RANDOM_LEN 32
#define TLS_MASTER_SECRET_LEN 48
	u8 seed[2 * TLS_RANDOM_LEN];

	FUNC2(MSG_DEBUG, "EAP-FAST: client_random",
		    client_random, TLS_RANDOM_LEN);
	FUNC2(MSG_DEBUG, "EAP-FAST: server_random",
		    server_random, TLS_RANDOM_LEN);

	/*
	 * RFC 4851, Section 5.1:
	 * master_secret = T-PRF(PAC-Key, "PAC to master secret label hash",
	 *                       server_random + client_random, 48)
	 */
	FUNC0(seed, server_random, TLS_RANDOM_LEN);
	FUNC0(seed + TLS_RANDOM_LEN, client_random, TLS_RANDOM_LEN);
	FUNC1(pac_key, EAP_FAST_PAC_KEY_LEN,
		   "PAC to master secret label hash",
		   seed, sizeof(seed), master_secret, TLS_MASTER_SECRET_LEN);

	FUNC3(MSG_DEBUG, "EAP-FAST: master_secret",
			master_secret, TLS_MASTER_SECRET_LEN);
}