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
struct TYPE_4__ {int (* check_trust ) (TYPE_1__*,int /*<<< orphan*/ *,int) ;} ;
typedef  TYPE_1__ X509_TRUST ;
typedef  int /*<<< orphan*/  X509 ;

/* Variables and functions */
 int /*<<< orphan*/  NID_anyExtendedKeyUsage ; 
 int X509_TRUST_DEFAULT ; 
 int X509_TRUST_DO_SS_COMPAT ; 
 TYPE_1__* FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

int FUNC5(X509 *x, int id, int flags)
{
    X509_TRUST *pt;
    int idx;

    /* We get this as a default value */
    if (id == X509_TRUST_DEFAULT)
        return FUNC3(NID_anyExtendedKeyUsage, x,
                         flags | X509_TRUST_DO_SS_COMPAT);
    idx = FUNC1(id);
    if (idx == -1)
        return FUNC2(id, x, flags);
    pt = FUNC0(idx);
    return pt->check_trust(pt, x, flags);
}