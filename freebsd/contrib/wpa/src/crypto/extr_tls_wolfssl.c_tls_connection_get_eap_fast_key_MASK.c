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
struct tls_connection {int /*<<< orphan*/ * ssl; } ;
typedef  int /*<<< orphan*/  seed ;
typedef  int /*<<< orphan*/  byte ;
typedef  int /*<<< orphan*/  WOLFSSL ;

/* Variables and functions */
 int RAN_LEN ; 
 int SEED_LEN ; 
 scalar_t__ WOLFSSL_TLSV1_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned int,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,unsigned int*,int /*<<< orphan*/ **,unsigned int*,int /*<<< orphan*/ **,unsigned int*) ; 

int FUNC11(void *tls_ctx, struct tls_connection *conn,
				    u8 *out, size_t out_len)
{
	byte seed[SEED_LEN];
	int ret = -1;
	WOLFSSL *ssl;
	byte *tmp_out;
	byte *_out;
	int skip = 0;
	byte *master_key;
	unsigned int master_key_len;
	byte *server_random;
	unsigned int server_len;
	byte *client_random;
	unsigned int client_len;

	if (!conn || !conn->ssl)
		return -1;
	ssl = conn->ssl;

	skip = 2 * (FUNC8(ssl) + FUNC6(ssl) +
		    FUNC7(ssl));

	tmp_out = FUNC2(skip + out_len);
	if (!tmp_out)
		return -1;
	_out = tmp_out;

	FUNC10(ssl, &master_key, &master_key_len, &server_random,
			 &server_len, &client_random, &client_len);
	FUNC3(seed, server_random, RAN_LEN);
	FUNC3(seed + RAN_LEN, client_random, RAN_LEN);

	if (FUNC9(ssl) == WOLFSSL_TLSV1_2) {
		FUNC5(master_key, master_key_len,
			       "key expansion", seed, sizeof(seed),
			       _out, skip + out_len);
		ret = 0;
	} else {
		ret = FUNC4(master_key, master_key_len,
				       "key expansion", seed, sizeof(seed),
				       _out, skip + out_len);
	}

	FUNC1(master_key, master_key_len);
	if (ret == 0)
		FUNC3(out, _out + skip, out_len);
	FUNC0(tmp_out, skip + out_len);

	return ret;
}