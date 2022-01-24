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
typedef  int /*<<< orphan*/  X509_STORE_CTX ;
typedef  int /*<<< orphan*/  X509_OBJECT ;
typedef  int /*<<< orphan*/  X509_NAME ;
typedef  int /*<<< orphan*/  X509_LOOKUP_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

X509_OBJECT *FUNC3(X509_STORE_CTX *vs,
                                               X509_LOOKUP_TYPE type,
                                               X509_NAME *name)
{
    X509_OBJECT *ret = FUNC1();

    if (ret == NULL)
        return NULL;
    if (!FUNC2(vs, type, name, ret)) {
        FUNC0(ret);
        return NULL;
    }
    return ret;
}