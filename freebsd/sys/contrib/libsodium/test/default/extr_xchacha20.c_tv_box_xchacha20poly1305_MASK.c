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
 scalar_t__ crypto_box_curve25519xchacha20poly1305_BEFORENMBYTES ; 
 size_t crypto_box_curve25519xchacha20poly1305_MACBYTES ; 
 scalar_t__ crypto_box_curve25519xchacha20poly1305_MESSAGEBYTES_MAX ; 
 scalar_t__ crypto_box_curve25519xchacha20poly1305_NONCEBYTES ; 
 scalar_t__ crypto_box_curve25519xchacha20poly1305_PUBLICKEYBYTES ; 
 scalar_t__ crypto_box_curve25519xchacha20poly1305_SECRETKEYBYTES ; 
 size_t crypto_box_curve25519xchacha20poly1305_SEEDBYTES ; 
 int FUNC1 (unsigned char*,unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (unsigned char*,unsigned char*,unsigned char*,size_t,unsigned char*,unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC4 (unsigned char*,unsigned char*,unsigned char*,size_t,unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC5 (unsigned char*,unsigned char*,size_t,unsigned char*,unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC6 (unsigned char*,unsigned char*,size_t,unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC7 (unsigned char*,unsigned char*) ; 
 size_t FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 (unsigned char*,unsigned char*,unsigned char*,size_t,unsigned char*,unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC12 (unsigned char*,unsigned char*,unsigned char*,size_t,unsigned char*,unsigned char*) ; 
 int FUNC13 (unsigned char*,unsigned char*,size_t,unsigned char*,unsigned char*,unsigned char*) ; 
 int FUNC14 (unsigned char*,unsigned char*,size_t,unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC15 () ; 
 scalar_t__ FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (unsigned char*,unsigned char*,unsigned char*) ; 
 size_t FUNC18 () ; 
 scalar_t__ FUNC19 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (unsigned char*,size_t) ; 
 size_t FUNC22 (int) ; 
 unsigned char* small_order_p ; 
 int /*<<< orphan*/  FUNC23 (char*,int,unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (unsigned char*) ; 
 scalar_t__ FUNC25 (size_t) ; 
 scalar_t__ FUNC26 (char*,char*) ; 

__attribute__((used)) static void
FUNC27(void)
{
    char           hex[65];
    unsigned char *pk;
    unsigned char *sk;
    unsigned char *m;
    unsigned char *m2;
    unsigned char *mac;
    unsigned char *nonce;
    unsigned char *out;
    unsigned char *pc;
    unsigned char *seed;
    size_t         m_len;
    int            i;

    pk = (unsigned char *) FUNC25(crypto_box_curve25519xchacha20poly1305_PUBLICKEYBYTES);
    sk = (unsigned char *) FUNC25(crypto_box_curve25519xchacha20poly1305_SECRETKEYBYTES);
    nonce = (unsigned char *) FUNC25(crypto_box_curve25519xchacha20poly1305_NONCEBYTES);
    mac = (unsigned char *) FUNC25(crypto_box_curve25519xchacha20poly1305_MACBYTES);
    pc = (unsigned char *) FUNC25(crypto_box_curve25519xchacha20poly1305_BEFORENMBYTES);
    for (i = 0; i < 10; i++) {
        m_len = (i == 0) ? 0 : FUNC22(150);
        m = (unsigned char *) FUNC25(m_len);
        m2 = (unsigned char *) FUNC25(m_len);

        out = (unsigned char *) FUNC25
            (crypto_box_curve25519xchacha20poly1305_MACBYTES + m_len);
        FUNC21(nonce, crypto_box_curve25519xchacha20poly1305_NONCEBYTES);
        FUNC21(m, m_len);
        FUNC0(FUNC7(pk, sk) == 0);
        FUNC0(FUNC5(out, m, 0, nonce,
                                                           pk, sk) == 0);
        FUNC0(FUNC5(out, m, m_len, nonce,
                                                           pk, sk) == 0);
        FUNC0(FUNC13
               (m2, out, crypto_box_curve25519xchacha20poly1305_MACBYTES + m_len,
                nonce, small_order_p, sk) == -1);
        FUNC0(FUNC13
               (m2, out, crypto_box_curve25519xchacha20poly1305_MACBYTES - 1,
                nonce, pk, sk) == -1);
        FUNC0(FUNC13
               (m2, out, 0, nonce, pk, sk) == -1);
        FUNC0(FUNC13
               (m2, out, crypto_box_curve25519xchacha20poly1305_MACBYTES + m_len,
                nonce, pk, sk) == 0);
        FUNC0(FUNC19(m2, m, m_len) == 0);
        FUNC24(out);

        out = (unsigned char *) FUNC25
            (crypto_box_curve25519xchacha20poly1305_MACBYTES + m_len);
        FUNC0(FUNC1(pc, small_order_p, sk) == -1);
        FUNC0(FUNC1(pc, pk, sk) == 0);
        FUNC0(FUNC6
               (out, m, 0, nonce, pc) == 0);
        FUNC0(FUNC6
               (out, m, m_len, nonce, pc) == 0);
        FUNC0(FUNC14
               (m2, out, crypto_box_curve25519xchacha20poly1305_MACBYTES - 1,
                nonce, pc) == -1);
        FUNC0(FUNC14
               (m2, out, 0,
                nonce, pc) == -1);
        FUNC0(FUNC14
               (m2, out, crypto_box_curve25519xchacha20poly1305_MACBYTES + m_len,
                nonce, pc) == 0);
        FUNC0(FUNC19(m2, m, m_len) == 0);
        FUNC24(out);

        out = (unsigned char *) FUNC25(m_len);
        FUNC0(FUNC3(out, mac, m, m_len,
                                                               nonce, small_order_p, sk) == -1);
        FUNC0(FUNC3(out, mac, m, m_len,
                                                               nonce, pk, sk) == 0);
        FUNC0(FUNC11
               (m2, out, mac, m_len, nonce, small_order_p, sk) == -1);
        FUNC0(FUNC11
               (m2, out, mac, m_len, nonce, pk, sk) == 0);
        FUNC24(out);

        out = (unsigned char *) FUNC25(m_len);
        FUNC0(FUNC4
               (out, mac, m, m_len, nonce, pc) == 0);
        FUNC0(FUNC12
               (m2, out, mac, m_len, nonce, pc) == 0);
        FUNC24(out);

        FUNC24(m2);
        FUNC24(m);
    }
    FUNC24(pc);
    FUNC24(mac);
    FUNC24(nonce);

    seed = (unsigned char *) FUNC25
        (crypto_box_curve25519xchacha20poly1305_SEEDBYTES);
    for (i = 0; i <(int)  crypto_box_curve25519xchacha20poly1305_SEEDBYTES; i++) {
        seed[i] = (unsigned char) i;
    }
    FUNC17(pk, sk, seed);
    FUNC23(hex, sizeof hex, pk, crypto_box_curve25519xchacha20poly1305_PUBLICKEYBYTES);
    FUNC0(FUNC26(hex, "4701d08488451f545a409fb58ae3e58581ca40ac3f7f114698cd71deac73ca01") == 0);
    FUNC23(hex, sizeof hex, sk, crypto_box_curve25519xchacha20poly1305_SECRETKEYBYTES);
    FUNC0(FUNC26(hex, "3d94eea49c580aef816935762be049559d6d1440dede12e6a125f1841fff8e6f") == 0);
    FUNC24(seed);

    FUNC24(sk);
    FUNC24(pk);

    FUNC0(FUNC18() == crypto_box_curve25519xchacha20poly1305_SEEDBYTES);
    FUNC0(FUNC15() == crypto_box_curve25519xchacha20poly1305_PUBLICKEYBYTES);
    FUNC0(FUNC16() == crypto_box_curve25519xchacha20poly1305_SECRETKEYBYTES);
    FUNC0(FUNC2() == crypto_box_curve25519xchacha20poly1305_BEFORENMBYTES);
    FUNC0(FUNC10() == crypto_box_curve25519xchacha20poly1305_NONCEBYTES);
    FUNC0(FUNC8() == crypto_box_curve25519xchacha20poly1305_MACBYTES);
    FUNC0(FUNC9() == crypto_box_curve25519xchacha20poly1305_MESSAGEBYTES_MAX);

    FUNC20("tv_box_xchacha20poly1305: ok\n");
}