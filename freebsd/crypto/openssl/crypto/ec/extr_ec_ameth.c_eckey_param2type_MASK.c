#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ length; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  TYPE_1__ ASN1_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  EC_F_ECKEY_PARAM2TYPE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EC_R_MISSING_PARAMETERS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_EC_LIB ; 
 void* FUNC6 (int) ; 
 int V_ASN1_OBJECT ; 
 int V_ASN1_SEQUENCE ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(int *pptype, void **ppval, EC_KEY *ec_key)
{
    const EC_GROUP *group;
    int nid;
    if (ec_key == NULL || (group = FUNC4(ec_key)) == NULL) {
        FUNC5(EC_F_ECKEY_PARAM2TYPE, EC_R_MISSING_PARAMETERS);
        return 0;
    }
    if (FUNC2(group)
        && (nid = FUNC3(group)))
        /* we have a 'named curve' => just set the OID */
    {
        *ppval = FUNC6(nid);
        *pptype = V_ASN1_OBJECT;
    } else {                    /* explicit parameters */

        ASN1_STRING *pstr = NULL;
        pstr = FUNC1();
        if (pstr == NULL)
            return 0;
        pstr->length = FUNC7(ec_key, &pstr->data);
        if (pstr->length <= 0) {
            FUNC0(pstr);
            FUNC5(EC_F_ECKEY_PARAM2TYPE, ERR_R_EC_LIB);
            return 0;
        }
        *ppval = pstr;
        *pptype = V_ASN1_SEQUENCE;
    }
    return 1;
}