#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  attributes; } ;
struct TYPE_18__ {TYPE_1__ req_info; } ;
typedef  TYPE_3__ X509_REQ ;
typedef  int /*<<< orphan*/  X509_NAME ;
struct TYPE_17__ {int /*<<< orphan*/  notAfter; int /*<<< orphan*/  notBefore; } ;
struct TYPE_19__ {TYPE_2__ validity; int /*<<< orphan*/ * version; } ;
typedef  TYPE_4__ X509_CINF ;
struct TYPE_20__ {TYPE_4__ cert_info; } ;
typedef  TYPE_5__ X509 ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  X509_F_X509_REQ_TO_X509 ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,long) ; 
 TYPE_5__* FUNC7 () ; 
 scalar_t__ FUNC8 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

X509 *FUNC14(X509_REQ *r, int days, EVP_PKEY *pkey)
{
    X509 *ret = NULL;
    X509_CINF *xi = NULL;
    X509_NAME *xn;
    EVP_PKEY *pubkey = NULL;

    if ((ret = FUNC7()) == NULL) {
        FUNC12(X509_F_X509_REQ_TO_X509, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    /* duplicate the request */
    xi = &ret->cert_info;

    if (FUNC13(r->req_info.attributes) != 0) {
        if ((xi->version = FUNC0()) == NULL)
            goto err;
        if (!FUNC1(xi->version, 2))
            goto err;
/*-     xi->extensions=ri->attributes; <- bad, should not ever be done
        ri->attributes=NULL; */
    }

    xn = FUNC4(r);
    if (FUNC10(ret, xn) == 0)
        goto err;
    if (FUNC8(ret, xn) == 0)
        goto err;

    if (FUNC6(xi->validity.notBefore, 0) == NULL)
        goto err;
    if (FUNC6(xi->validity.notAfter, (long)60 * 60 * 24 * days) ==
        NULL)
        goto err;

    pubkey = FUNC3(r);
    if (pubkey == NULL || !FUNC9(ret, pubkey))
        goto err;

    if (!FUNC11(ret, pkey, FUNC2()))
        goto err;
    return ret;

 err:
    FUNC5(ret);
    return NULL;
}