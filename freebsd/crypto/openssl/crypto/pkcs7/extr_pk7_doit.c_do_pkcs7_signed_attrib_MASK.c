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
typedef  int /*<<< orphan*/  PKCS7_SIGNER_INFO ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_EVP_LIB ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,unsigned int*) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  NID_pkcs9_signingTime ; 
 int /*<<< orphan*/  PKCS7_F_DO_PKCS7_SIGNED_ATTRIB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(PKCS7_SIGNER_INFO *si, EVP_MD_CTX *mctx)
{
    unsigned char md_data[EVP_MAX_MD_SIZE];
    unsigned int md_len;

    /* Add signing time if not already present */
    if (!FUNC4(si, NID_pkcs9_signingTime)) {
        if (!FUNC2(si, NULL)) {
            FUNC5(PKCS7_F_DO_PKCS7_SIGNED_ATTRIB, ERR_R_MALLOC_FAILURE);
            return 0;
        }
    }

    /* Add digest */
    if (!FUNC0(mctx, md_data, &md_len)) {
        FUNC5(PKCS7_F_DO_PKCS7_SIGNED_ATTRIB, ERR_R_EVP_LIB);
        return 0;
    }
    if (!FUNC3(si, md_data, md_len)) {
        FUNC5(PKCS7_F_DO_PKCS7_SIGNED_ATTRIB, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    /* Now sign the attributes */
    if (!FUNC1(si))
        return 0;

    return 1;
}