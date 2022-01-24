#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  octet; } ;
struct TYPE_12__ {TYPE_2__ value; void* type; } ;
struct TYPE_9__ {TYPE_4__* bag; } ;
struct TYPE_11__ {void* type; TYPE_1__ value; } ;
typedef  TYPE_3__ PKCS12_SAFEBAG ;
typedef  TYPE_4__ PKCS12_BAGS ;
typedef  int /*<<< orphan*/  ASN1_ITEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 TYPE_4__* FUNC3 () ; 
 int /*<<< orphan*/  PKCS12_F_PKCS12_ITEM_PACK_SAFEBAG ; 
 TYPE_3__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

PKCS12_SAFEBAG *FUNC6(void *obj, const ASN1_ITEM *it,
                                         int nid1, int nid2)
{
    PKCS12_BAGS *bag;
    PKCS12_SAFEBAG *safebag;

    if ((bag = FUNC3()) == NULL) {
        FUNC5(PKCS12_F_PKCS12_ITEM_PACK_SAFEBAG, ERR_R_MALLOC_FAILURE);
        return NULL;
    }
    bag->type = FUNC1(nid1);
    if (!FUNC0(obj, it, &bag->value.octet)) {
        FUNC5(PKCS12_F_PKCS12_ITEM_PACK_SAFEBAG, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    if ((safebag = FUNC4()) == NULL) {
        FUNC5(PKCS12_F_PKCS12_ITEM_PACK_SAFEBAG, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    safebag->value.bag = bag;
    safebag->type = FUNC1(nid2);
    return safebag;

 err:
    FUNC2(bag);
    return NULL;
}