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
typedef  int /*<<< orphan*/  EVP_PKEY_METHOD ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  EVP_F_EVP_PKEY_METH_ADD0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * app_pkey_methods ; 
 int /*<<< orphan*/  pmeth_cmp ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(const EVP_PKEY_METHOD *pmeth)
{
    if (app_pkey_methods == NULL) {
        app_pkey_methods = FUNC1(pmeth_cmp);
        if (app_pkey_methods == NULL){
            FUNC0(EVP_F_EVP_PKEY_METH_ADD0, ERR_R_MALLOC_FAILURE);
            return 0;
        }
    }
    if (!FUNC2(app_pkey_methods, pmeth)) {
        FUNC0(EVP_F_EVP_PKEY_METH_ADD0, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    FUNC3(app_pkey_methods);
    return 1;
}