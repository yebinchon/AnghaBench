#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ ptr; } ;
struct TYPE_10__ {int save_type; TYPE_2__ const* ameth; int /*<<< orphan*/  type; int /*<<< orphan*/ * engine; int /*<<< orphan*/ * pmeth_engine; TYPE_1__ pkey; } ;
struct TYPE_9__ {int /*<<< orphan*/  pkey_id; } ;
typedef  TYPE_2__ EVP_PKEY_ASN1_METHOD ;
typedef  TYPE_3__ EVP_PKEY ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EVP_F_PKEY_SET_TYPE ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ **,int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ **,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  EVP_R_UNSUPPORTED_ALGORITHM ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(EVP_PKEY *pkey, ENGINE *e, int type, const char *str,
                         int len)
{
    const EVP_PKEY_ASN1_METHOD *ameth;
    ENGINE **eptr = (e == NULL) ? &e :  NULL;

    if (pkey) {
        if (pkey->pkey.ptr)
            FUNC3(pkey);
        /*
         * If key type matches and a method exists then this lookup has
         * succeeded once so just indicate success.
         */
        if ((type == pkey->save_type) && pkey->ameth)
            return 1;
#ifndef OPENSSL_NO_ENGINE
        /* If we have ENGINEs release them */
        FUNC0(pkey->engine);
        pkey->engine = NULL;
        FUNC0(pkey->pmeth_engine);
        pkey->pmeth_engine = NULL;
#endif
    }
    if (str)
        ameth = FUNC2(eptr, str, len);
    else
        ameth = FUNC1(eptr, type);
#ifndef OPENSSL_NO_ENGINE
    if (pkey == NULL && eptr != NULL)
        FUNC0(e);
#endif
    if (ameth == NULL) {
        FUNC4(EVP_F_PKEY_SET_TYPE, EVP_R_UNSUPPORTED_ALGORITHM);
        return 0;
    }
    if (pkey) {
        pkey->ameth = ameth;
        pkey->engine = e;

        pkey->type = pkey->ameth->pkey_id;
        pkey->save_type = type;
    }
    return 1;
}