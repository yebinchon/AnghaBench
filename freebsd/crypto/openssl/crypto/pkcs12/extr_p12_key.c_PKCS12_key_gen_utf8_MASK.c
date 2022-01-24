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
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,unsigned char**,int*) ; 
 int /*<<< orphan*/  PKCS12_F_PKCS12_KEY_GEN_UTF8 ; 
 int FUNC2 (unsigned char*,int,unsigned char*,int,int,int,int,unsigned char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(const char *pass, int passlen, unsigned char *salt,
                        int saltlen, int id, int iter, int n,
                        unsigned char *out, const EVP_MD *md_type)
{
    int ret;
    unsigned char *unipass;
    int uniplen;

    if (!pass) {
        unipass = NULL;
        uniplen = 0;
    } else if (!FUNC1(pass, passlen, &unipass, &uniplen)) {
        FUNC3(PKCS12_F_PKCS12_KEY_GEN_UTF8, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    ret = FUNC2(unipass, uniplen, salt, saltlen,
                             id, iter, n, out, md_type);
    if (ret <= 0)
        return 0;
    FUNC0(unipass, uniplen);
    return ret;
}