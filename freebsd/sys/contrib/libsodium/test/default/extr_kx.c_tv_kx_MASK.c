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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  crypto_kx_PRIMITIVE ; 
 int crypto_kx_PUBLICKEYBYTES ; 
 int crypto_kx_SECRETKEYBYTES ; 
 int crypto_kx_SEEDBYTES ; 
 int crypto_kx_SESSIONKEYBYTES ; 
 scalar_t__ FUNC1 (unsigned char*,unsigned char*,unsigned char*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*,unsigned char*) ; 
 int FUNC7 () ; 
 scalar_t__ FUNC8 (unsigned char*,unsigned char*,unsigned char*,unsigned char*,unsigned char*) ; 
 int FUNC9 () ; 
 scalar_t__ FUNC10 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,int) ; 
 unsigned char* small_order_p ; 
 int /*<<< orphan*/  FUNC13 (char*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC14 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC15 (unsigned char*,int) ; 
 scalar_t__ FUNC16 (int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC18(void)
{
    unsigned char *seed;
    unsigned char *client_pk, *client_sk;
    unsigned char *client_rx, *client_tx;
    unsigned char *server_pk, *server_sk;
    unsigned char *server_rx, *server_tx;
    char           hex[65];
    int            i;

    seed = (unsigned char *) FUNC16(crypto_kx_SEEDBYTES);
    for (i = 0; i < crypto_kx_SEEDBYTES; i++) {
        seed[i] = (unsigned char) i;
    }
    client_pk = (unsigned char *) FUNC16(crypto_kx_PUBLICKEYBYTES);
    client_sk = (unsigned char *) FUNC16(crypto_kx_SECRETKEYBYTES);
    FUNC6(client_pk, client_sk, seed);

    FUNC13(hex, sizeof hex, client_pk, crypto_kx_PUBLICKEYBYTES);
    FUNC11("client_pk: [%s]\n", hex);
    FUNC13(hex, sizeof hex, client_sk, crypto_kx_SECRETKEYBYTES);
    FUNC11("client_sk: [%s]\n", hex);

    server_pk = (unsigned char *) FUNC16(crypto_kx_PUBLICKEYBYTES);
    server_sk = (unsigned char *) FUNC16(crypto_kx_SECRETKEYBYTES);
    FUNC2(server_pk, server_sk);

    client_rx = (unsigned char *) FUNC16(crypto_kx_SESSIONKEYBYTES);
    client_tx = (unsigned char *) FUNC16(crypto_kx_SESSIONKEYBYTES);

    FUNC0(FUNC1(client_rx, client_tx,
                                         client_pk, client_sk,
                                         small_order_p) == -1);
    if (FUNC1(client_rx, client_tx,
                                      client_pk, client_sk, server_pk) != 0) {
        FUNC11("crypto_kx_client_session_keys() failed\n");
    }

    server_rx = (unsigned char *) FUNC16(crypto_kx_SESSIONKEYBYTES);
    server_tx = (unsigned char *) FUNC16(crypto_kx_SESSIONKEYBYTES);

    FUNC0(FUNC8(server_rx, server_tx,
                                         server_pk, server_sk,
                                         small_order_p) == -1);
    if (FUNC8(server_rx, server_tx,
                                      server_pk, server_sk, client_pk) != 0) {
        FUNC11("crypto_kx_server_session_keys() failed\n");
    }
    if (FUNC10(server_rx, client_tx, crypto_kx_SESSIONKEYBYTES) != 0 ||
        FUNC10(server_tx, client_rx, crypto_kx_SESSIONKEYBYTES) != 0) {
        FUNC11("client session keys != server session keys\n");
    }

    FUNC15(client_pk, crypto_kx_PUBLICKEYBYTES);
    if (FUNC8(server_rx, server_tx,
                                      server_pk, server_sk, client_pk) != 0) {
        FUNC11("crypto_kx_server_session_keys() failed\n");
    }
    if (FUNC10(server_rx, client_tx, crypto_kx_SESSIONKEYBYTES) == 0 &&
        FUNC10(server_tx, client_rx, crypto_kx_SESSIONKEYBYTES) == 0) {
        FUNC11("peer's public key is ignored\n");
    }

    FUNC2(client_pk, client_sk);
    if (FUNC8(server_rx, server_tx,
                                      server_pk, server_sk, client_pk) != 0) {
        FUNC11("crypto_kx_server_session_keys() failed\n");
    }
    if (FUNC10(server_rx, client_tx, crypto_kx_SESSIONKEYBYTES) == 0 ||
        FUNC10(server_tx, client_rx, crypto_kx_SESSIONKEYBYTES) == 0) {
        FUNC11("session keys are constant\n");
    }

    FUNC6(client_pk, client_sk, seed);
    FUNC15(seed, crypto_kx_SEEDBYTES);
    FUNC6(server_pk, server_sk, seed);
    if (FUNC8(server_rx, server_tx,
                                      server_pk, server_sk, client_pk) != 0) {
        FUNC11("crypto_kx_server_session_keys() failed\n");
    }
    FUNC13(hex, sizeof hex, server_rx, crypto_kx_SESSIONKEYBYTES);
    FUNC11("server_rx: [%s]\n", hex);
    FUNC13(hex, sizeof hex, server_tx, crypto_kx_SESSIONKEYBYTES);
    FUNC11("server_tx: [%s]\n", hex);

    if (FUNC1(client_rx, client_tx,
                                      client_pk, client_sk, server_pk) != 0) {
        FUNC11("crypto_kx_client_session_keys() failed\n");
    }
    FUNC13(hex, sizeof hex, client_rx, crypto_kx_SESSIONKEYBYTES);
    FUNC11("client_rx: [%s]\n", hex);
    FUNC13(hex, sizeof hex, client_tx, crypto_kx_SESSIONKEYBYTES);
    FUNC11("client_tx: [%s]\n", hex);

    FUNC12(client_rx, crypto_kx_SESSIONKEYBYTES);
    FUNC12(client_tx, crypto_kx_SESSIONKEYBYTES);
    FUNC12(server_rx, crypto_kx_SESSIONKEYBYTES);
    FUNC12(server_tx, crypto_kx_SESSIONKEYBYTES);
    if (FUNC1(client_rx, NULL,
                                      client_pk, client_sk, server_pk) != 0 ||
        FUNC1(NULL, client_tx,
                                      client_pk, client_sk, server_pk) != 0 ||
        FUNC8(server_rx, NULL,
                                      server_pk, server_sk, client_pk) != 0 ||
        FUNC8(NULL, server_tx,
                                      server_pk, server_sk, client_pk) != 0) {
        FUNC11("failure when one of the pointers happens to be NULL");
    }
    FUNC0(FUNC10(client_rx, client_tx, crypto_kx_SESSIONKEYBYTES) == 0);
    FUNC0(FUNC10(client_tx, server_rx, crypto_kx_SESSIONKEYBYTES) == 0);
    FUNC0(FUNC10(server_rx, server_tx, crypto_kx_SESSIONKEYBYTES) == 0);

    FUNC14(client_rx);
    FUNC14(client_tx);
    FUNC14(server_rx);
    FUNC14(server_tx);
    FUNC14(server_sk);
    FUNC14(server_pk);
    FUNC14(client_sk);
    FUNC14(client_pk);
    FUNC14(seed);

    FUNC0(FUNC17(FUNC3(), crypto_kx_PRIMITIVE) == 0);
    FUNC0(FUNC4() == crypto_kx_PUBLICKEYBYTES);
    FUNC0(FUNC5() == crypto_kx_SECRETKEYBYTES);
    FUNC0(FUNC7() == crypto_kx_SEEDBYTES);
    FUNC0(FUNC9() == crypto_kx_SESSIONKEYBYTES);

    FUNC11("tv_kx: ok\n");
}