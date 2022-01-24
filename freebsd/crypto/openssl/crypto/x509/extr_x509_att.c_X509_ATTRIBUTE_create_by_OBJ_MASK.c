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
typedef  int /*<<< orphan*/  X509_ATTRIBUTE ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,void const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  X509_F_X509_ATTRIBUTE_CREATE_BY_OBJ ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

X509_ATTRIBUTE *FUNC5(X509_ATTRIBUTE **attr,
                                             const ASN1_OBJECT *obj,
                                             int atrtype, const void *data,
                                             int len)
{
    X509_ATTRIBUTE *ret;

    if ((attr == NULL) || (*attr == NULL)) {
        if ((ret = FUNC1()) == NULL) {
            FUNC4(X509_F_X509_ATTRIBUTE_CREATE_BY_OBJ,
                    ERR_R_MALLOC_FAILURE);
            return NULL;
        }
    } else
        ret = *attr;

    if (!FUNC3(ret, obj))
        goto err;
    if (!FUNC2(ret, atrtype, data, len))
        goto err;

    if ((attr != NULL) && (*attr == NULL))
        *attr = ret;
    return ret;
 err:
    if ((attr == NULL) || (ret != *attr))
        FUNC0(ret);
    return NULL;
}