#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nbits; int qbits; int /*<<< orphan*/ * md; void* pmd; } ;
struct TYPE_4__ {TYPE_2__* data; } ;
typedef  TYPE_1__ EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  TYPE_2__ DSA_PKEY_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  DSA_F_PKEY_DSA_CTRL ; 
 int /*<<< orphan*/  DSA_R_INVALID_DIGEST_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
#define  EVP_PKEY_CTRL_CMS_SIGN 136 
#define  EVP_PKEY_CTRL_DIGESTINIT 135 
#define  EVP_PKEY_CTRL_DSA_PARAMGEN_BITS 134 
#define  EVP_PKEY_CTRL_DSA_PARAMGEN_MD 133 
#define  EVP_PKEY_CTRL_DSA_PARAMGEN_Q_BITS 132 
#define  EVP_PKEY_CTRL_GET_MD 131 
#define  EVP_PKEY_CTRL_MD 130 
#define  EVP_PKEY_CTRL_PEER_KEY 129 
#define  EVP_PKEY_CTRL_PKCS7_SIGN 128 
 int /*<<< orphan*/  EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE ; 
 int /*<<< orphan*/  NID_dsa ; 
 int /*<<< orphan*/  NID_dsaWithSHA ; 
 int /*<<< orphan*/  NID_sha1 ; 
 int /*<<< orphan*/  NID_sha224 ; 
 int /*<<< orphan*/  NID_sha256 ; 
 int /*<<< orphan*/  NID_sha384 ; 
 int /*<<< orphan*/  NID_sha3_224 ; 
 int /*<<< orphan*/  NID_sha3_256 ; 
 int /*<<< orphan*/  NID_sha3_384 ; 
 int /*<<< orphan*/  NID_sha3_512 ; 
 int /*<<< orphan*/  NID_sha512 ; 

__attribute__((used)) static int FUNC2(EVP_PKEY_CTX *ctx, int type, int p1, void *p2)
{
    DSA_PKEY_CTX *dctx = ctx->data;

    switch (type) {
    case EVP_PKEY_CTRL_DSA_PARAMGEN_BITS:
        if (p1 < 256)
            return -2;
        dctx->nbits = p1;
        return 1;

    case EVP_PKEY_CTRL_DSA_PARAMGEN_Q_BITS:
        if (p1 != 160 && p1 != 224 && p1 && p1 != 256)
            return -2;
        dctx->qbits = p1;
        return 1;

    case EVP_PKEY_CTRL_DSA_PARAMGEN_MD:
        if (FUNC1((const EVP_MD *)p2) != NID_sha1 &&
            FUNC1((const EVP_MD *)p2) != NID_sha224 &&
            FUNC1((const EVP_MD *)p2) != NID_sha256) {
            FUNC0(DSA_F_PKEY_DSA_CTRL, DSA_R_INVALID_DIGEST_TYPE);
            return 0;
        }
        dctx->pmd = p2;
        return 1;

    case EVP_PKEY_CTRL_MD:
        if (FUNC1((const EVP_MD *)p2) != NID_sha1 &&
            FUNC1((const EVP_MD *)p2) != NID_dsa &&
            FUNC1((const EVP_MD *)p2) != NID_dsaWithSHA &&
            FUNC1((const EVP_MD *)p2) != NID_sha224 &&
            FUNC1((const EVP_MD *)p2) != NID_sha256 &&
            FUNC1((const EVP_MD *)p2) != NID_sha384 &&
            FUNC1((const EVP_MD *)p2) != NID_sha512 &&
            FUNC1((const EVP_MD *)p2) != NID_sha3_224 &&
            FUNC1((const EVP_MD *)p2) != NID_sha3_256 &&
            FUNC1((const EVP_MD *)p2) != NID_sha3_384 &&
            FUNC1((const EVP_MD *)p2) != NID_sha3_512) {
            FUNC0(DSA_F_PKEY_DSA_CTRL, DSA_R_INVALID_DIGEST_TYPE);
            return 0;
        }
        dctx->md = p2;
        return 1;

    case EVP_PKEY_CTRL_GET_MD:
        *(const EVP_MD **)p2 = dctx->md;
        return 1;

    case EVP_PKEY_CTRL_DIGESTINIT:
    case EVP_PKEY_CTRL_PKCS7_SIGN:
    case EVP_PKEY_CTRL_CMS_SIGN:
        return 1;

    case EVP_PKEY_CTRL_PEER_KEY:
        FUNC0(DSA_F_PKEY_DSA_CTRL,
               EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE);
        return -2;
    default:
        return -2;

    }
}