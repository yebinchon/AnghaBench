#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int pkey_flags; char const* pem_str; } ;
typedef  TYPE_1__ EVP_PKEY_ASN1_METHOD ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int ASN1_PKEY_ALIAS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ **,char const*,int) ; 
 TYPE_1__* FUNC3 (int) ; 
 int FUNC4 () ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,char const*,int) ; 

const EVP_PKEY_ASN1_METHOD *FUNC7(ENGINE **pe,
                                                   const char *str, int len)
{
    int i;
    const EVP_PKEY_ASN1_METHOD *ameth = NULL;

    if (len == -1)
        len = FUNC5(str);
    if (pe) {
#ifndef OPENSSL_NO_ENGINE
        ENGINE *e;
        ameth = FUNC2(&e, str, len);
        if (ameth) {
            /*
             * Convert structural into functional reference
             */
            if (!FUNC1(e))
                ameth = NULL;
            FUNC0(e);
            *pe = e;
            return ameth;
        }
#endif
        *pe = NULL;
    }
    for (i = FUNC4(); i-- > 0; ) {
        ameth = FUNC3(i);
        if (ameth->pkey_flags & ASN1_PKEY_ALIAS)
            continue;
        if ((int)FUNC5(ameth->pem_str) == len
            && FUNC6(ameth->pem_str, str, len) == 0)
            return ameth;
    }
    return NULL;
}