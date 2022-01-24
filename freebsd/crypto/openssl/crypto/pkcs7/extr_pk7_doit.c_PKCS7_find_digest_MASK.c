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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_TYPE_MD ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PKCS7_F_PKCS7_FIND_DIGEST ; 
 int /*<<< orphan*/  PKCS7_R_UNABLE_TO_FIND_MESSAGE_DIGEST ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BIO *FUNC5(EVP_MD_CTX **pmd, BIO *bio, int nid)
{
    for (;;) {
        bio = FUNC0(bio, BIO_TYPE_MD);
        if (bio == NULL) {
            FUNC4(PKCS7_F_PKCS7_FIND_DIGEST,
                     PKCS7_R_UNABLE_TO_FIND_MESSAGE_DIGEST);
            return NULL;
        }
        FUNC1(bio, pmd);
        if (*pmd == NULL) {
            FUNC4(PKCS7_F_PKCS7_FIND_DIGEST, ERR_R_INTERNAL_ERROR);
            return NULL;
        }
        if (FUNC3(*pmd) == nid)
            return bio;
        bio = FUNC2(bio);
    }
    return NULL;
}