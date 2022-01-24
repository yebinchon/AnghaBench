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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t crypto_box_BEFORENMBYTES ; 
 size_t crypto_box_MACBYTES ; 
 size_t crypto_box_NONCEBYTES ; 
 size_t crypto_box_PUBLICKEYBYTES ; 
 size_t crypto_box_SECRETKEYBYTES ; 
 int FUNC1 (unsigned char*,unsigned char*,unsigned char*) ; 
 int FUNC2 (unsigned char*,unsigned char*,unsigned char*,unsigned long long,unsigned char*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,unsigned char*,unsigned long long,unsigned char*,unsigned char*) ; 
 int FUNC4 (unsigned char*,unsigned char*,unsigned long long,unsigned char*,unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC5 (unsigned char*,unsigned char*,unsigned long long,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*) ; 
 int FUNC7 (unsigned char*,unsigned char*,unsigned char*,unsigned long long,unsigned char*,unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC8 (unsigned char*,unsigned char*,unsigned char*,unsigned long long,unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC9 (unsigned char*,unsigned char*,unsigned long long,unsigned char*,unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC10 (unsigned char*,unsigned char*,size_t,unsigned char*,unsigned char*) ; 
 int FUNC11 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (unsigned char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  FUNC15 (unsigned char*,size_t) ; 
 size_t FUNC16 (int) ; 
 unsigned char* small_order_p ; 
 int /*<<< orphan*/  FUNC17 (unsigned char*) ; 
 scalar_t__ FUNC18 (size_t) ; 

int
FUNC19(void)
{
    unsigned char *alicepk;
    unsigned char *alicesk;
    unsigned char *bobpk;
    unsigned char *bobsk;
    unsigned char *mac;
    unsigned char *nonce;
    unsigned char *k1;
    unsigned char *k2;
    unsigned char *m;
    unsigned char *m2;
    unsigned char *c;
    size_t         mlen;
    size_t         i;
    size_t         m_size;
    size_t         m2_size;
    size_t         c_size;
    int            ret;

    m2_size = m_size = 7U + FUNC16(1000);
    c_size           = crypto_box_MACBYTES + m_size;
    m                = (unsigned char *) FUNC18(m_size);
    m2               = (unsigned char *) FUNC18(m2_size);
    c                = (unsigned char *) FUNC18(c_size);
    alicepk = (unsigned char *) FUNC18(crypto_box_PUBLICKEYBYTES);
    alicesk = (unsigned char *) FUNC18(crypto_box_SECRETKEYBYTES);
    bobpk   = (unsigned char *) FUNC18(crypto_box_PUBLICKEYBYTES);
    bobsk   = (unsigned char *) FUNC18(crypto_box_SECRETKEYBYTES);
    mac     = (unsigned char *) FUNC18(crypto_box_MACBYTES);
    nonce   = (unsigned char *) FUNC18(crypto_box_NONCEBYTES);
    k1      = (unsigned char *) FUNC18(crypto_box_BEFORENMBYTES);
    k2      = (unsigned char *) FUNC18(crypto_box_BEFORENMBYTES);
    FUNC6(alicepk, alicesk);
    FUNC6(bobpk, bobsk);
    mlen = (size_t) FUNC16((uint32_t) m_size) + 1U;
    FUNC15(m, mlen);
    FUNC15(nonce, crypto_box_NONCEBYTES);
    ret = FUNC4(c, m, mlen, nonce, bobpk, alicesk);
    FUNC0(ret == 0);
    if (FUNC9(m2, c,
                             (unsigned long long) mlen + crypto_box_MACBYTES,
                             nonce, alicepk, bobsk) != 0) {
        FUNC14("open() failed");
        return 1;
    }
    FUNC14("%d\n", FUNC11(m, m2, mlen));

    for (i = 0; i < mlen + crypto_box_MACBYTES - 1; i++) {
        if (FUNC9(m2, c, (unsigned long long) i, nonce, alicepk,
                                 bobsk) == 0) {
            FUNC14("short open() should have failed");
            return 1;
        }
    }
    FUNC12(c, m, mlen);
    ret =
        FUNC4(c, c, (unsigned long long) mlen, nonce, bobpk, alicesk);
    FUNC0(ret == 0);
    FUNC14("%d\n", FUNC11(m, c, mlen) == 0);
    FUNC14("%d\n", FUNC11(m, c + crypto_box_MACBYTES, mlen) == 0);
    if (FUNC9(c, c,
                             (unsigned long long) mlen + crypto_box_MACBYTES,
                             nonce, alicepk, bobsk) != 0) {
        FUNC14("crypto_box_open_easy() failed\n");
    }

    ret = FUNC1(k1, small_order_p, bobsk);
    FUNC0(ret == -1);
    ret = FUNC1(k2, small_order_p, alicesk);
    FUNC0(ret == -1);

    ret = FUNC1(k1, alicepk, bobsk);
    FUNC0(ret == 0);
    ret = FUNC1(k2, bobpk, alicesk);
    FUNC0(ret == 0);

    FUNC13(m2, 0, m2_size);

    if (FUNC5(c, m, 0, nonce, k1) != 0) {
        FUNC14(
            "crypto_box_easy_afternm() with a null ciphertext should have "
            "worked\n");
    }
    FUNC5(c, m, (unsigned long long) mlen, nonce, k1);
    if (FUNC10(
            m2, c, (unsigned long long) mlen + crypto_box_MACBYTES, nonce,
            k2) != 0) {
        FUNC14("crypto_box_open_easy_afternm() failed\n");
    }
    FUNC14("%d\n", FUNC11(m, m2, mlen));
    if (FUNC10(m2, c, crypto_box_MACBYTES - 1U, nonce,
                                     k2) == 0) {
        FUNC14(
            "crypto_box_open_easy_afternm() with a huge ciphertext should have "
            "failed\n");
    }
    FUNC13(m2, 0, m2_size);
    ret = FUNC2(c, mac, m, (unsigned long long) mlen, nonce,
                              small_order_p, bobsk);
    FUNC0(ret == -1);
    ret = FUNC2(c, mac, m, (unsigned long long) mlen, nonce,
                              alicepk, bobsk);
    FUNC0(ret == 0);
    if (FUNC7(m2, c, mac, (unsigned long long) mlen, nonce,
                                 small_order_p, alicesk) != -1) {
        FUNC14("crypto_box_open_detached() with a weak key passed\n");
    }
    if (FUNC7(m2, c, mac, (unsigned long long) mlen, nonce,
                                 bobpk, alicesk) != 0) {
        FUNC14("crypto_box_open_detached() failed\n");
    }
    FUNC14("%d\n", FUNC11(m, m2, mlen));

    FUNC13(m2, 0, m2_size);
    FUNC3(c, mac, m, (unsigned long long) mlen, nonce,
                                k1);
    if (FUNC8(m2, c, mac, (unsigned long long) mlen,
                                         nonce, k2) != 0) {
        FUNC14("crypto_box_open_detached_afternm() failed\n");
    }
    FUNC14("%d\n", FUNC11(m, m2, mlen));

    FUNC17(alicepk);
    FUNC17(alicesk);
    FUNC17(bobpk);
    FUNC17(bobsk);
    FUNC17(mac);
    FUNC17(nonce);
    FUNC17(k1);
    FUNC17(k2);
    FUNC17(m);
    FUNC17(m2);
    FUNC17(c);
    FUNC14("OK\n");

    return 0;
}