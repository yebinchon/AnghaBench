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
struct TYPE_3__ {int /*<<< orphan*/ * reject; } ;
typedef  TYPE_1__ X509_CERT_AUX ;
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC5(X509 *x, const ASN1_OBJECT *obj)
{
    X509_CERT_AUX *aux;
    ASN1_OBJECT *objtmp;
    if ((objtmp = FUNC1(obj)) == NULL)
        return 0;
    if ((aux = FUNC2(x)) == NULL)
        goto err;
    if (aux->reject == NULL
        && (aux->reject = FUNC3()) == NULL)
        goto err;
    return FUNC4(aux->reject, objtmp);
 err:
    FUNC0(objtmp);
    return 0;
}