#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * pp; int /*<<< orphan*/ * t; int /*<<< orphan*/ * d; int /*<<< orphan*/ * r; } ;
typedef  TYPE_1__ RSA_PRIME_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  RSA_F_RSA_MULTIP_INFO_NEW ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

RSA_PRIME_INFO *FUNC5(void)
{
    RSA_PRIME_INFO *pinfo;

    /* create a RSA_PRIME_INFO structure */
    if ((pinfo = FUNC3(sizeof(RSA_PRIME_INFO))) == NULL) {
        FUNC4(RSA_F_RSA_MULTIP_INFO_NEW, ERR_R_MALLOC_FAILURE);
        return NULL;
    }
    if ((pinfo->r = FUNC1()) == NULL)
        goto err;
    if ((pinfo->d = FUNC1()) == NULL)
        goto err;
    if ((pinfo->t = FUNC1()) == NULL)
        goto err;
    if ((pinfo->pp = FUNC1()) == NULL)
        goto err;

    return pinfo;

 err:
    FUNC0(pinfo->r);
    FUNC0(pinfo->d);
    FUNC0(pinfo->t);
    FUNC0(pinfo->pp);
    FUNC2(pinfo);
    return NULL;
}