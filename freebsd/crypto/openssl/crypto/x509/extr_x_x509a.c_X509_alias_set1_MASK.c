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
struct TYPE_8__ {int /*<<< orphan*/ * alias; } ;
typedef  TYPE_2__ X509_CERT_AUX ;
struct TYPE_9__ {TYPE_1__* aux; } ;
typedef  TYPE_3__ X509 ;
struct TYPE_7__ {int /*<<< orphan*/ * alias; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 TYPE_2__* FUNC3 (TYPE_3__*) ; 

int FUNC4(X509 *x, const unsigned char *name, int len)
{
    X509_CERT_AUX *aux;
    if (!name) {
        if (!x || !x->aux || !x->aux->alias)
            return 1;
        FUNC1(x->aux->alias);
        x->aux->alias = NULL;
        return 1;
    }
    if ((aux = FUNC3(x)) == NULL)
        return 0;
    if (aux->alias == NULL && (aux->alias = FUNC2()) == NULL)
        return 0;
    return FUNC0(aux->alias, name, len);
}