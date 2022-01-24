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
 int crypto_box_PUBLICKEYBYTES ; 
 size_t crypto_box_SEALBYTES ; 
 int crypto_box_SECRETKEYBYTES ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC2 (unsigned char*,unsigned char*,size_t,unsigned char*) ; 
 int FUNC3 (unsigned char*,unsigned char*,size_t,unsigned char*,unsigned char*) ; 
 size_t FUNC4 () ; 
 int FUNC5 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,size_t) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*) ; 
 scalar_t__ FUNC10 (size_t) ; 

int
FUNC11(void)
{
    unsigned char  pk[crypto_box_PUBLICKEYBYTES];
    unsigned char  sk[crypto_box_SECRETKEYBYTES];
    unsigned char *c;
    unsigned char *m;
    unsigned char *m2;
    size_t         m_len;
    size_t         c_len;

    FUNC1(pk, sk);
    m_len = (size_t) FUNC8(1000);
    c_len = crypto_box_SEALBYTES + m_len;
    m     = (unsigned char *) FUNC10(m_len);
    m2    = (unsigned char *) FUNC10(m_len);
    c     = (unsigned char *) FUNC10(c_len);
    FUNC7(m, m_len);
    if (FUNC2(c, m, m_len, pk) != 0) {
        FUNC6("crypto_box_seal() failure\n");
        return 1;
    }
    if (FUNC3(m2, c, c_len, pk, sk) != 0) {
        FUNC6("crypto_box_seal_open() failure\n");
        return 1;
    }
    FUNC6("%d\n", FUNC5(m, m2, m_len));

    FUNC6("%d\n", FUNC3(m, c, 0U, pk, sk));
    FUNC6("%d\n", FUNC3(m, c, c_len - 1U, pk, sk));
    FUNC6("%d\n", FUNC3(m, c, c_len, sk, pk));

    FUNC9(c);
    FUNC9(m);
    FUNC9(m2);

    FUNC0(FUNC4() == crypto_box_SEALBYTES);

    return 0;
}