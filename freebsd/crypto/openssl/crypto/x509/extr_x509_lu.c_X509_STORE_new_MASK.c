#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int cache; int references; int /*<<< orphan*/ * get_cert_methods; int /*<<< orphan*/ * objs; int /*<<< orphan*/ * param; int /*<<< orphan*/ * lock; int /*<<< orphan*/  ex_data; } ;
typedef  TYPE_1__ X509_STORE ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_EX_INDEX_X509_STORE ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  X509_F_X509_STORE_NEW ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  x509_object_cmp ; 

X509_STORE *FUNC11(void)
{
    X509_STORE *ret = FUNC3(sizeof(*ret));

    if (ret == NULL) {
        FUNC6(X509_F_X509_STORE_NEW, ERR_R_MALLOC_FAILURE);
        return NULL;
    }
    if ((ret->objs = FUNC10(x509_object_cmp)) == NULL) {
        FUNC6(X509_F_X509_STORE_NEW, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    ret->cache = 1;
    if ((ret->get_cert_methods = FUNC8()) == NULL) {
        FUNC6(X509_F_X509_STORE_NEW, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if ((ret->param = FUNC5()) == NULL) {
        FUNC6(X509_F_X509_STORE_NEW, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    if (!FUNC1(CRYPTO_EX_INDEX_X509_STORE, ret, &ret->ex_data)) {
        FUNC6(X509_F_X509_STORE_NEW, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    ret->lock = FUNC0();
    if (ret->lock == NULL) {
        FUNC6(X509_F_X509_STORE_NEW, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    ret->references = 1;
    return ret;

err:
    FUNC4(ret->param);
    FUNC9(ret->objs);
    FUNC7(ret->get_cert_methods);
    FUNC2(ret);
    return NULL;
}