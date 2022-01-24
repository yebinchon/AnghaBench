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
 int /*<<< orphan*/  CRYPTO_F_OPENSSL_HEXSTR2BUF ; 
 int /*<<< orphan*/  CRYPTO_R_ILLEGAL_HEX_DIGIT ; 
 int /*<<< orphan*/  CRYPTO_R_ODD_NUMBER_OF_DIGITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 int FUNC2 (unsigned char) ; 
 unsigned char* FUNC3 (size_t) ; 
 size_t FUNC4 (char const*) ; 

unsigned char *FUNC5(const char *str, long *len)
{
    unsigned char *hexbuf, *q;
    unsigned char ch, cl;
    int chi, cli;
    const unsigned char *p;
    size_t s;

    s = FUNC4(str);
    if ((hexbuf = FUNC3(s >> 1)) == NULL) {
        FUNC0(CRYPTO_F_OPENSSL_HEXSTR2BUF, ERR_R_MALLOC_FAILURE);
        return NULL;
    }
    for (p = (const unsigned char *)str, q = hexbuf; *p; ) {
        ch = *p++;
        if (ch == ':')
            continue;
        cl = *p++;
        if (!cl) {
            FUNC0(CRYPTO_F_OPENSSL_HEXSTR2BUF,
                      CRYPTO_R_ODD_NUMBER_OF_DIGITS);
            FUNC1(hexbuf);
            return NULL;
        }
        cli = FUNC2(cl);
        chi = FUNC2(ch);
        if (cli < 0 || chi < 0) {
            FUNC1(hexbuf);
            FUNC0(CRYPTO_F_OPENSSL_HEXSTR2BUF, CRYPTO_R_ILLEGAL_HEX_DIGIT);
            return NULL;
        }
        *q++ = (unsigned char)((chi << 4) | cli);
    }

    if (len)
        *len = q - hexbuf;
    return hexbuf;
}