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
typedef  int /*<<< orphan*/  X509_NAME_ENTRY ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

X509_NAME_ENTRY *FUNC4(X509_NAME_ENTRY **ne,
                                               const ASN1_OBJECT *obj, int type,
                                               const unsigned char *bytes,
                                               int len)
{
    X509_NAME_ENTRY *ret;

    if ((ne == NULL) || (*ne == NULL)) {
        if ((ret = FUNC1()) == NULL)
            return NULL;
    } else
        ret = *ne;

    if (!FUNC3(ret, obj))
        goto err;
    if (!FUNC2(ret, type, bytes, len))
        goto err;

    if ((ne != NULL) && (*ne == NULL))
        *ne = ret;
    return ret;
 err:
    if ((ne == NULL) || (ret != *ne))
        FUNC0(ret);
    return NULL;
}