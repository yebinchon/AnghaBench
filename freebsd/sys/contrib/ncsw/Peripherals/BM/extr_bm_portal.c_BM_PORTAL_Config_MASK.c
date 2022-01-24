#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  struct bm_portal* t_Handle ;
struct TYPE_6__ {struct TYPE_6__* h_Bm; int /*<<< orphan*/  irq; scalar_t__ swPortalId; int /*<<< orphan*/  ciBaseAddress; int /*<<< orphan*/  ceBaseAddress; } ;
typedef  TYPE_2__ t_BmPortalParam ;
struct TYPE_5__ {void* addr_ci; void* addr_ce; } ;
struct bm_portal {int cpu; int /*<<< orphan*/  mask; struct bm_portal* p_BmPortalDriverParams; int /*<<< orphan*/  hwExtStructsMemAttr; TYPE_2__* h_Bm; int /*<<< orphan*/  irq; TYPE_1__ addr; struct bm_portal* p_BmPortalLow; } ;
typedef  struct bm_portal t_BmPortalDriverParams ;
typedef  struct bm_portal t_BmPortal ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_memAttr ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_NO_MEMORY ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bm_portal*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct bm_portal*,int /*<<< orphan*/ ,int) ; 

t_Handle FUNC7(t_BmPortalParam *p_BmPortalParam)
{
    t_BmPortal          *p_BmPortal;

    FUNC1(p_BmPortalParam, E_INVALID_HANDLE, NULL);
    FUNC1(p_BmPortalParam->h_Bm, E_INVALID_HANDLE, NULL);

    p_BmPortal = (t_BmPortal *)FUNC4(sizeof(t_BmPortal));
    if (!p_BmPortal)
    {
        FUNC0(MAJOR, E_NO_MEMORY, ("Bm Portal obj!!!"));
        return NULL;
    }
    FUNC6(p_BmPortal, 0, sizeof(t_BmPortal));

    p_BmPortal->p_BmPortalLow = (struct bm_portal *)FUNC4(sizeof(struct bm_portal));
    if (!p_BmPortal->p_BmPortalLow)
    {
        FUNC3(p_BmPortal);
        FUNC0(MAJOR, E_NO_MEMORY, ("Low bm portal obj!!!"));
        return NULL;
    }
    FUNC6(p_BmPortal->p_BmPortalLow, 0, sizeof(struct bm_portal));

    p_BmPortal->p_BmPortalDriverParams = (t_BmPortalDriverParams *)FUNC4(sizeof(t_BmPortalDriverParams));
    if (!p_BmPortal->p_BmPortalDriverParams)
    {
        FUNC3(p_BmPortal);
        FUNC3(p_BmPortal->p_BmPortalLow);
        FUNC0(MAJOR, E_NO_MEMORY, ("Bm Portal driver parameters"));
        return NULL;
    }
    FUNC6(p_BmPortal->p_BmPortalDriverParams, 0, sizeof(t_BmPortalDriverParams));

    p_BmPortal->p_BmPortalLow->addr.addr_ce = FUNC2(p_BmPortalParam->ceBaseAddress);
    p_BmPortal->p_BmPortalLow->addr.addr_ci = FUNC2(p_BmPortalParam->ciBaseAddress);
    p_BmPortal->cpu   = (int)p_BmPortalParam->swPortalId;
    p_BmPortal->irq   = p_BmPortalParam->irq;

    p_BmPortal->h_Bm    = p_BmPortalParam->h_Bm;

    p_BmPortal->p_BmPortalDriverParams->hwExtStructsMemAttr     = DEFAULT_memAttr;
    FUNC5(&p_BmPortal->p_BmPortalDriverParams->mask);

    return p_BmPortal;
}