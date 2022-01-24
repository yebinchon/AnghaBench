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
struct TYPE_5__ {int pkey_id; int pkey_base_id; int pkey_flags; void* pem_str; void* info; } ;
typedef  TYPE_1__ EVP_PKEY_ASN1_METHOD ;

/* Variables and functions */
 int ASN1_PKEY_DYNAMIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 void* FUNC1 (char const*) ; 
 TYPE_1__* FUNC2 (int) ; 

EVP_PKEY_ASN1_METHOD *FUNC3(int id, int flags,
                                        const char *pem_str, const char *info)
{
    EVP_PKEY_ASN1_METHOD *ameth = FUNC2(sizeof(*ameth));

    if (ameth == NULL)
        return NULL;

    ameth->pkey_id = id;
    ameth->pkey_base_id = id;
    ameth->pkey_flags = flags | ASN1_PKEY_DYNAMIC;

    if (info) {
        ameth->info = FUNC1(info);
        if (!ameth->info)
            goto err;
    }

    if (pem_str) {
        ameth->pem_str = FUNC1(pem_str);
        if (!ameth->pem_str)
            goto err;
    }

    return ameth;

 err:
    FUNC0(ameth);
    return NULL;

}