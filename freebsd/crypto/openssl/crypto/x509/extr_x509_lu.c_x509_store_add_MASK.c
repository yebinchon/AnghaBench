#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  objs; } ;
typedef  TYPE_2__ X509_STORE ;
struct TYPE_12__ {int /*<<< orphan*/ * x509; int /*<<< orphan*/ * crl; } ;
struct TYPE_14__ {int /*<<< orphan*/  type; TYPE_1__ data; } ;
typedef  TYPE_3__ X509_OBJECT ;
typedef  int /*<<< orphan*/  X509_CRL ;
typedef  int /*<<< orphan*/  X509 ;

/* Variables and functions */
 int /*<<< orphan*/  X509_LU_CRL ; 
 int /*<<< orphan*/  X509_LU_NONE ; 
 int /*<<< orphan*/  X509_LU_X509 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 TYPE_3__* FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static int FUNC7(X509_STORE *store, void *x, int crl) {
    X509_OBJECT *obj;
    int ret = 0, added = 0;

    if (x == NULL)
        return 0;
    obj = FUNC1();
    if (obj == NULL)
        return 0;

    if (crl) {
        obj->type = X509_LU_CRL;
        obj->data.crl = (X509_CRL *)x;
    } else {
        obj->type = X509_LU_X509;
        obj->data.x509 = (X509 *)x;
    }
    if (!FUNC3(obj)) {
        obj->type = X509_LU_NONE;
        FUNC0(obj);
        return 0;
    }

    FUNC4(store);
    if (FUNC2(store->objs, obj)) {
        ret = 1;
    } else {
        added = FUNC6(store->objs, obj);
        ret = added != 0;
    }
    FUNC5(store);

    if (added == 0)             /* obj not pushed */
        FUNC0(obj);

    return ret;
}