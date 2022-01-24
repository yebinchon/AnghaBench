#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_10__ {int owners; } ;
typedef  TYPE_1__ t_FmPcdKgScheme ;
struct TYPE_11__ {int numOfSchemes; int /*<<< orphan*/ * schemesIds; } ;
typedef  TYPE_2__ t_FmPcdKgInterModuleBindPortToSchemes ;
struct TYPE_12__ {TYPE_1__* schemes; } ;
typedef  TYPE_3__ t_FmPcdKg ;
struct TYPE_13__ {TYPE_3__* p_FmPcdKg; } ;
typedef  TYPE_4__ t_FmPcd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FM_PCD_KG_NUM_OF_SCHEMES ; 
 size_t FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(t_FmPcd *p_FmPcd, t_FmPcdKgInterModuleBindPortToSchemes *p_BindPort)
{
    t_FmPcdKg           *p_FmPcdKg;
    t_FmPcdKgScheme     *p_Scheme;
    uint32_t            intFlags;
    uint8_t             relativeSchemeId;
    int                 i;

    p_FmPcdKg = p_FmPcd->p_FmPcdKg;

    /* for each scheme - update owners counters */
    for (i = 0; i < p_BindPort->numOfSchemes; i++)
    {
        relativeSchemeId = FUNC1(p_FmPcd, p_BindPort->schemesIds[i]);
        FUNC0(relativeSchemeId < FM_PCD_KG_NUM_OF_SCHEMES);

        p_Scheme = &p_FmPcdKg->schemes[relativeSchemeId];

        /* increment owners number */
        FUNC0(p_Scheme->owners);
        intFlags = FUNC2(p_Scheme);
        p_Scheme->owners--;
        FUNC3(p_Scheme, intFlags);
    }
}