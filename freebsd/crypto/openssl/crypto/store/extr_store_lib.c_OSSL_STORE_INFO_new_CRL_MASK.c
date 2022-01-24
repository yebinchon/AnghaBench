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
typedef  int /*<<< orphan*/  X509_CRL ;
typedef  int /*<<< orphan*/  OSSL_STORE_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  OSSL_STORE_F_OSSL_STORE_INFO_NEW_CRL ; 
 int /*<<< orphan*/  OSSL_STORE_INFO_CRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

OSSL_STORE_INFO *FUNC2(X509_CRL *crl)
{
    OSSL_STORE_INFO *info = FUNC1(OSSL_STORE_INFO_CRL, crl);

    if (info == NULL)
        FUNC0(OSSL_STORE_F_OSSL_STORE_INFO_NEW_CRL,
                      ERR_R_MALLOC_FAILURE);
    return info;
}