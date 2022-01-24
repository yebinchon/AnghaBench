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
struct TYPE_2__ {int /*<<< orphan*/  tls_version; } ;
struct tlsv1_client {scalar_t__ state; int /*<<< orphan*/  master_secret; TYPE_1__ rl; int /*<<< orphan*/  const* server_random; int /*<<< orphan*/  const* client_random; } ;

/* Variables and functions */
 scalar_t__ ESTABLISHED ; 
 int /*<<< orphan*/  TLS_MASTER_SECRET_LEN ; 
 int TLS_RANDOM_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,size_t) ; 

int FUNC5(struct tlsv1_client *conn, const char *label,
		     const u8 *context, size_t context_len,
		     int server_random_first, u8 *out, size_t out_len)
{
	u8 *seed, *pos;
	size_t seed_len = 2 * TLS_RANDOM_LEN;
	int res;

	if (conn->state != ESTABLISHED)
		return -1;

	if (context_len > 65535)
		return -1;

	if (context)
		seed_len += 2 + context_len;

	seed = FUNC2(seed_len);
	if (!seed)
		return -1;

	if (server_random_first) {
		FUNC3(seed, conn->server_random, TLS_RANDOM_LEN);
		FUNC3(seed + TLS_RANDOM_LEN, conn->client_random,
			  TLS_RANDOM_LEN);
	} else {
		FUNC3(seed, conn->client_random, TLS_RANDOM_LEN);
		FUNC3(seed + TLS_RANDOM_LEN, conn->server_random,
			  TLS_RANDOM_LEN);
	}

	if (context) {
		pos = seed + 2 * TLS_RANDOM_LEN;
		FUNC0(pos, context_len);
		pos += 2;
		FUNC3(pos, context, context_len);
	}

	res = FUNC4(conn->rl.tls_version,
		      conn->master_secret, TLS_MASTER_SECRET_LEN,
		      label, seed, seed_len, out, out_len);
	FUNC1(seed);
	return res;
}