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
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int MD5_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*,int) ; 

int
FUNC7(const unsigned char clnt_nonce[8],
				    const unsigned char svr_chal[8],
				    unsigned char verifier[8])
{
    unsigned char ntlm2_sess_hash[MD5_DIGEST_LENGTH];
    EVP_MD_CTX *m;

    m = FUNC3();
    if (m == NULL)
	return ENOMEM;

    FUNC1(m, FUNC5(), NULL);
    FUNC2(m, svr_chal, 8); /* session nonce part 1 */
    FUNC2(m, clnt_nonce, 8); /* session nonce part 2 */
    FUNC0(m, ntlm2_sess_hash, NULL); /* will only use first 8 bytes */
    FUNC4(m);

    FUNC6(verifier, ntlm2_sess_hash, 8);

    return 0;
}