#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * pmeth_engine; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ EVP_PKEY ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_ENGINE_LIB ; 
 int /*<<< orphan*/  EVP_F_EVP_PKEY_SET1_ENGINE ; 
 int /*<<< orphan*/  EVP_R_UNSUPPORTED_ALGORITHM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(EVP_PKEY *pkey, ENGINE *e)
{
    if (e != NULL) {
        if (!FUNC2(e)) {
            FUNC3(EVP_F_EVP_PKEY_SET1_ENGINE, ERR_R_ENGINE_LIB);
            return 0;
        }
        if (FUNC1(e, pkey->type) == NULL) {
            FUNC0(e);
            FUNC3(EVP_F_EVP_PKEY_SET1_ENGINE, EVP_R_UNSUPPORTED_ALGORITHM);
            return 0;
        }
    }
    FUNC0(pkey->pmeth_engine);
    pkey->pmeth_engine = e;
    return 1;
}