#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * other; } ;
struct TYPE_9__ {TYPE_1__ d; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ PKCS7 ;
typedef  int /*<<< orphan*/  ASN1_OCTET_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NID_id_smime_ct_TSTInfo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_2__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  V_ASN1_OCTET_STRING ; 

__attribute__((used)) static int FUNC8(PKCS7 *p7)
{
    PKCS7 *ret = NULL;
    ASN1_OCTET_STRING *octet_string = NULL;

    /* Create new encapsulated NID_id_smime_ct_TSTInfo content. */
    if ((ret = FUNC6()) == NULL)
        goto err;
    if ((ret->d.other = FUNC2()) == NULL)
        goto err;
    ret->type = FUNC4(NID_id_smime_ct_TSTInfo);
    if ((octet_string = FUNC1()) == NULL)
        goto err;
    FUNC3(ret->d.other, V_ASN1_OCTET_STRING, octet_string);
    octet_string = NULL;

    /* Add encapsulated content to signed PKCS7 structure. */
    if (!FUNC7(p7, ret))
        goto err;

    return 1;
 err:
    FUNC0(octet_string);
    FUNC5(ret);
    return 0;
}