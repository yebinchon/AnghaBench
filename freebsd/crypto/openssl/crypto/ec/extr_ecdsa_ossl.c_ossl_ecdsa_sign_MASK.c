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
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned char const*,int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,unsigned char**) ; 

int FUNC3(int type, const unsigned char *dgst, int dlen,
                    unsigned char *sig, unsigned int *siglen,
                    const BIGNUM *kinv, const BIGNUM *r, EC_KEY *eckey)
{
    ECDSA_SIG *s;

    s = FUNC1(dgst, dlen, kinv, r, eckey);
    if (s == NULL) {
        *siglen = 0;
        return 0;
    }
    *siglen = FUNC2(s, &sig);
    FUNC0(s);
    return 1;
}