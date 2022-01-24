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
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  ECDSA_SIG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int FUNC2 (unsigned char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ **,unsigned char const**,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,unsigned char**) ; 
 scalar_t__ FUNC6 (unsigned char const*,unsigned char*,int) ; 

int FUNC7(int type, const unsigned char *dgst, int dgst_len,
                      const unsigned char *sigbuf, int sig_len, EC_KEY *eckey)
{
    ECDSA_SIG *s;
    const unsigned char *p = sigbuf;
    unsigned char *der = NULL;
    int derlen = -1;
    int ret = -1;

    s = FUNC1();
    if (s == NULL)
        return ret;
    if (FUNC4(&s, &p, sig_len) == NULL)
        goto err;
    /* Ensure signature uses DER and doesn't have trailing garbage */
    derlen = FUNC5(s, &der);
    if (derlen != sig_len || FUNC6(sigbuf, der, derlen) != 0)
        goto err;
    ret = FUNC2(dgst, dgst_len, s, eckey);
 err:
    FUNC3(der, derlen);
    FUNC0(s);
    return ret;
}