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
struct TYPE_5__ {int pkey_flags; int /*<<< orphan*/  pkey_id; int /*<<< orphan*/ * pem_str; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ EVP_PKEY_ASN1_METHOD ;

/* Variables and functions */
 int ASN1_PKEY_ALIAS ; 
 int /*<<< orphan*/  ERR_R_PASSED_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  EVP_F_EVP_PKEY_ASN1_ADD0 ; 
 int /*<<< orphan*/  EVP_R_PKEY_APPLICATION_ASN1_METHOD_ALREADY_REGISTERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ameth_cmp ; 
 int /*<<< orphan*/ * app_methods ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(const EVP_PKEY_ASN1_METHOD *ameth)
{
    EVP_PKEY_ASN1_METHOD tmp = { 0, };

    /*
     * One of the following must be true:
     *
     * pem_str == NULL AND ASN1_PKEY_ALIAS is set
     * pem_str != NULL AND ASN1_PKEY_ALIAS is clear
     *
     * Anything else is an error and may lead to a corrupt ASN1 method table
     */
    if (!((ameth->pem_str == NULL
           && (ameth->pkey_flags & ASN1_PKEY_ALIAS) != 0)
          || (ameth->pem_str != NULL
              && (ameth->pkey_flags & ASN1_PKEY_ALIAS) == 0))) {
        FUNC0(EVP_F_EVP_PKEY_ASN1_ADD0, ERR_R_PASSED_INVALID_ARGUMENT);
        return 0;
    }

    if (app_methods == NULL) {
        app_methods = FUNC2(ameth_cmp);
        if (app_methods == NULL)
            return 0;
    }

    tmp.pkey_id = ameth->pkey_id;
    if (FUNC1(app_methods, &tmp) >= 0) {
        FUNC0(EVP_F_EVP_PKEY_ASN1_ADD0,
               EVP_R_PKEY_APPLICATION_ASN1_METHOD_ALREADY_REGISTERED);
        return 0;
    }

    if (!FUNC3(app_methods, ameth))
        return 0;
    FUNC4(app_methods);
    return 1;
}