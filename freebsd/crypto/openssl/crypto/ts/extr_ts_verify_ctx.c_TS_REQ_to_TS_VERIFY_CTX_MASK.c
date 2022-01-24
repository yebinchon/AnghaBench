#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_ALGOR ;
struct TYPE_12__ {int /*<<< orphan*/ * hashed_msg; int /*<<< orphan*/ * hash_algo; } ;
struct TYPE_11__ {int /*<<< orphan*/ * nonce; TYPE_3__* msg_imprint; int /*<<< orphan*/ * policy_id; } ;
struct TYPE_10__ {int flags; int /*<<< orphan*/ * nonce; int /*<<< orphan*/  imprint_len; int /*<<< orphan*/ * imprint; int /*<<< orphan*/ * md_alg; int /*<<< orphan*/ * policy; } ;
typedef  TYPE_1__ TS_VERIFY_CTX ;
typedef  TYPE_2__ TS_REQ ;
typedef  TYPE_3__ TS_MSG_IMPRINT ;
typedef  int /*<<< orphan*/  ASN1_OCTET_STRING ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_1__* FUNC8 () ; 
 int TS_VFY_ALL_IMPRINT ; 
 int TS_VFY_NONCE ; 
 int TS_VFY_POLICY ; 
 int TS_VFY_SIGNATURE ; 
 int TS_VFY_TSA_NAME ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

TS_VERIFY_CTX *FUNC11(TS_REQ *req, TS_VERIFY_CTX *ctx)
{
    TS_VERIFY_CTX *ret = ctx;
    ASN1_OBJECT *policy;
    TS_MSG_IMPRINT *imprint;
    X509_ALGOR *md_alg;
    ASN1_OCTET_STRING *msg;
    const ASN1_INTEGER *nonce;

    FUNC4(req != NULL);
    if (ret)
        FUNC6(ret);
    else if ((ret = FUNC8()) == NULL)
        return NULL;

    ret->flags = TS_VFY_ALL_IMPRINT & ~(TS_VFY_TSA_NAME | TS_VFY_SIGNATURE);

    if ((policy = req->policy_id) != NULL) {
        if ((ret->policy = FUNC3(policy)) == NULL)
            goto err;
    } else
        ret->flags &= ~TS_VFY_POLICY;

    imprint = req->msg_imprint;
    md_alg = imprint->hash_algo;
    if ((ret->md_alg = FUNC9(md_alg)) == NULL)
        goto err;
    msg = imprint->hashed_msg;
    ret->imprint_len = FUNC2(msg);
    if ((ret->imprint = FUNC5(ret->imprint_len)) == NULL)
        goto err;
    FUNC10(ret->imprint, FUNC1(msg), ret->imprint_len);

    if ((nonce = req->nonce) != NULL) {
        if ((ret->nonce = FUNC0(nonce)) == NULL)
            goto err;
    } else
        ret->flags &= ~TS_VFY_NONCE;

    return ret;
 err:
    if (ctx)
        FUNC6(ctx);
    else
        FUNC7(ret);
    return NULL;
}