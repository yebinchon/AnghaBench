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
typedef  int /*<<< orphan*/  NETSCAPE_SPKI ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int FUNC0 (unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (int) ; 
 int /*<<< orphan*/  X509_F_NETSCAPE_SPKI_B64_DECODE ; 
 int /*<<< orphan*/  X509_R_BASE64_DECODE_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,unsigned char const**,int) ; 
 int FUNC5 (char const*) ; 

NETSCAPE_SPKI *FUNC6(const char *str, int len)
{
    unsigned char *spki_der;
    const unsigned char *p;
    int spki_len;
    NETSCAPE_SPKI *spki;
    if (len <= 0)
        len = FUNC5(str);
    if ((spki_der = FUNC2(len + 1)) == NULL) {
        FUNC3(X509_F_NETSCAPE_SPKI_B64_DECODE, ERR_R_MALLOC_FAILURE);
        return NULL;
    }
    spki_len = FUNC0(spki_der, (const unsigned char *)str, len);
    if (spki_len < 0) {
        FUNC3(X509_F_NETSCAPE_SPKI_B64_DECODE, X509_R_BASE64_DECODE_ERROR);
        FUNC1(spki_der);
        return NULL;
    }
    p = spki_der;
    spki = FUNC4(NULL, &p, spki_len);
    FUNC1(spki_der);
    return spki;
}