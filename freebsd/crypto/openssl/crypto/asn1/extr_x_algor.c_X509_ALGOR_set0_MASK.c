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
struct TYPE_3__ {int /*<<< orphan*/ * parameter; int /*<<< orphan*/ * algorithm; } ;
typedef  TYPE_1__ X509_ALGOR ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,void*) ; 
 int V_ASN1_UNDEF ; 

int FUNC4(X509_ALGOR *alg, ASN1_OBJECT *aobj, int ptype, void *pval)
{
    if (alg == NULL)
        return 0;

    if (ptype != V_ASN1_UNDEF) {
        if (alg->parameter == NULL)
            alg->parameter = FUNC2();
        if (alg->parameter == NULL)
            return 0;
    }

    FUNC0(alg->algorithm);
    alg->algorithm = aobj;

    if (ptype == 0)
        return 1;
    if (ptype == V_ASN1_UNDEF) {
        FUNC1(alg->parameter);
        alg->parameter = NULL;
    } else
        FUNC3(alg->parameter, ptype, pval);
    return 1;
}