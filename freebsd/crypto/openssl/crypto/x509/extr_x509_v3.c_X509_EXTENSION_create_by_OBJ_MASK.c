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
typedef  int /*<<< orphan*/  X509_EXTENSION ;
typedef  int /*<<< orphan*/  ASN1_OCTET_STRING ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  X509_F_X509_EXTENSION_CREATE_BY_OBJ ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

X509_EXTENSION *FUNC6(X509_EXTENSION **ex,
                                             const ASN1_OBJECT *obj, int crit,
                                             ASN1_OCTET_STRING *data)
{
    X509_EXTENSION *ret;

    if ((ex == NULL) || (*ex == NULL)) {
        if ((ret = FUNC1()) == NULL) {
            FUNC5(X509_F_X509_EXTENSION_CREATE_BY_OBJ,
                    ERR_R_MALLOC_FAILURE);
            return NULL;
        }
    } else
        ret = *ex;

    if (!FUNC4(ret, obj))
        goto err;
    if (!FUNC2(ret, crit))
        goto err;
    if (!FUNC3(ret, data))
        goto err;

    if ((ex != NULL) && (*ex == NULL))
        *ex = ret;
    return ret;
 err:
    if ((ex == NULL) || (ret != *ex))
        FUNC0(ret);
    return NULL;
}