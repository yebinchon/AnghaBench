#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* authsafes; int /*<<< orphan*/  version; } ;
struct TYPE_7__ {int /*<<< orphan*/ * data; } ;
struct TYPE_8__ {TYPE_1__ d; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ PKCS12 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
#define  NID_pkcs7_data 128 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  PKCS12_F_PKCS12_INIT ; 
 int /*<<< orphan*/  PKCS12_R_UNSUPPORTED_PKCS12_MODE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_3__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

PKCS12 *FUNC6(int mode)
{
    PKCS12 *pkcs12;

    if ((pkcs12 = FUNC4()) == NULL) {
        FUNC5(PKCS12_F_PKCS12_INIT, ERR_R_MALLOC_FAILURE);
        return NULL;
    }
    if (!FUNC0(pkcs12->version, 3))
        goto err;
    pkcs12->authsafes->type = FUNC2(mode);
    switch (mode) {
    case NID_pkcs7_data:
        if ((pkcs12->authsafes->d.data = FUNC1()) == NULL) {
            FUNC5(PKCS12_F_PKCS12_INIT, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        break;
    default:
        FUNC5(PKCS12_F_PKCS12_INIT, PKCS12_R_UNSUPPORTED_PKCS12_MODE);
        goto err;
    }
    return pkcs12;

 err:
    FUNC3(pkcs12);
    return NULL;
}