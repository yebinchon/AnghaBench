#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int length; unsigned char* data; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  RSA ;
typedef  TYPE_1__ ASN1_OCTET_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned int) ; 
 unsigned char* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  RSA_F_RSA_SIGN_ASN1_OCTET_STRING ; 
 int /*<<< orphan*/  RSA_PKCS1_PADDING ; 
 int RSA_PKCS1_PADDING_SIZE ; 
 int /*<<< orphan*/  RSA_R_DIGEST_TOO_BIG_FOR_RSA_KEY ; 
 int FUNC2 (int,unsigned char*,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_ASN1_OCTET_STRING ; 
 int FUNC5 (TYPE_1__*,unsigned char**) ; 

int FUNC6(int type,
                               const unsigned char *m, unsigned int m_len,
                               unsigned char *sigret, unsigned int *siglen,
                               RSA *rsa)
{
    ASN1_OCTET_STRING sig;
    int i, j, ret = 1;
    unsigned char *p, *s;

    sig.type = V_ASN1_OCTET_STRING;
    sig.length = m_len;
    sig.data = (unsigned char *)m;

    i = FUNC5(&sig, NULL);
    j = FUNC3(rsa);
    if (i > (j - RSA_PKCS1_PADDING_SIZE)) {
        FUNC4(RSA_F_RSA_SIGN_ASN1_OCTET_STRING,
               RSA_R_DIGEST_TOO_BIG_FOR_RSA_KEY);
        return 0;
    }
    s = FUNC1((unsigned int)j + 1);
    if (s == NULL) {
        FUNC4(RSA_F_RSA_SIGN_ASN1_OCTET_STRING, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    p = s;
    FUNC5(&sig, &p);
    i = FUNC2(i, s, sigret, rsa, RSA_PKCS1_PADDING);
    if (i <= 0)
        ret = 0;
    else
        *siglen = i;

    FUNC0(s, (unsigned int)j + 1);
    return ret;
}