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
typedef  int /*<<< orphan*/  HMAC_CTX ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 

int
FUNC6(const unsigned char sessionkey[16],
			    const unsigned char *clnt_nonce, size_t clnt_nonce_length,
			    const unsigned char svr_chal[8],
			    unsigned char derivedkey[16])
{
    unsigned int hmaclen;
    HMAC_CTX *c;

    /* HMAC(Ksession, serverchallenge || clientchallenge) */
    c = FUNC2();
    if (c == NULL)
	return ENOMEM;
    FUNC4(c, sessionkey, 16, FUNC0(), NULL);
    FUNC5(c, svr_chal, 8);
    FUNC5(c, clnt_nonce, clnt_nonce_length);
    FUNC3(c, derivedkey, &hmaclen);
    FUNC1(c);
    return 0;
}