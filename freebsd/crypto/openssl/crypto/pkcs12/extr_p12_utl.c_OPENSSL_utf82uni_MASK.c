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
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 unsigned char* FUNC0 (char const*,int,unsigned char**,int*) ; 
 unsigned char* FUNC1 (int) ; 
 int /*<<< orphan*/  PKCS12_F_OPENSSL_UTF82UNI ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned char const*,int,unsigned long*) ; 
 int FUNC4 (char const*) ; 

unsigned char *FUNC5(const char *asc, int asclen,
                                unsigned char **uni, int *unilen)
{
    int ulen, i, j;
    unsigned char *unitmp, *ret;
    unsigned long utf32chr = 0;

    if (asclen == -1)
        asclen = FUNC4(asc);

    for (ulen = 0, i = 0; i < asclen; i += j) {
        j = FUNC3((const unsigned char *)asc+i, asclen-i, &utf32chr);

        /*
         * Following condition is somewhat opportunistic is sense that
         * decoding failure is used as *indirect* indication that input
         * string might in fact be extended ASCII/ANSI/ISO-8859-X. The
         * fallback is taken in hope that it would allow to process
         * files created with previous OpenSSL version, which used the
         * naive OPENSSL_asc2uni all along. It might be worth noting
         * that probability of false positive depends on language. In
         * cases covered by ISO Latin 1 probability is very low, because
         * any printable non-ASCII alphabet letter followed by another
         * or any ASCII character will trigger failure and fallback.
         * In other cases situation can be intensified by the fact that
         * English letters are not part of alternative keyboard layout,
         * but even then there should be plenty of pairs that trigger
         * decoding failure...
         */
        if (j < 0)
            return FUNC0(asc, asclen, uni, unilen);

        if (utf32chr > 0x10FFFF)        /* UTF-16 cap */
            return NULL;

        if (utf32chr >= 0x10000)        /* pair of UTF-16 characters */
            ulen += 2*2;
        else                            /* or just one */
            ulen += 2;
    }

    ulen += 2;  /* for trailing UTF16 zero */

    if ((ret = FUNC1(ulen)) == NULL) {
        FUNC2(PKCS12_F_OPENSSL_UTF82UNI, ERR_R_MALLOC_FAILURE);
        return NULL;
    }
    /* re-run the loop writing down UTF-16 characters in big-endian order */
    for (unitmp = ret, i = 0; i < asclen; i += j) {
        j = FUNC3((const unsigned char *)asc+i, asclen-i, &utf32chr);
        if (utf32chr >= 0x10000) {      /* pair if UTF-16 characters */
            unsigned int hi, lo;

            utf32chr -= 0x10000;
            hi = 0xD800 + (utf32chr>>10);
            lo = 0xDC00 + (utf32chr&0x3ff);
            *unitmp++ = (unsigned char)(hi>>8);
            *unitmp++ = (unsigned char)(hi);
            *unitmp++ = (unsigned char)(lo>>8);
            *unitmp++ = (unsigned char)(lo);
        } else {                        /* or just one */
            *unitmp++ = (unsigned char)(utf32chr>>8);
            *unitmp++ = (unsigned char)(utf32chr);
        }
    }
    /* Make result double null terminated */
    *unitmp++ = 0;
    *unitmp++ = 0;
    if (unilen)
        *unilen = ulen;
    if (uni)
        *uni = ret;
    return ret;
}