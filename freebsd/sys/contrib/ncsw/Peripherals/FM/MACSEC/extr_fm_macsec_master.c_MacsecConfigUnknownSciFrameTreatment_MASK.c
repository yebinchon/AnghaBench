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
typedef  scalar_t__ t_Handle ;
struct TYPE_3__ {int /*<<< orphan*/  unknownSciTreatMode; struct TYPE_3__* p_FmMacsecDriverParam; } ;
typedef  TYPE_1__ t_FmMacsec ;
typedef  int /*<<< orphan*/  t_Error ;
typedef  int /*<<< orphan*/  e_FmMacsecUnknownSciFrameTreatment ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static t_Error FUNC1(t_Handle h_FmMacsec, e_FmMacsecUnknownSciFrameTreatment treatMode)
{
    t_FmMacsec  *p_FmMacsec = (t_FmMacsec*)h_FmMacsec;

    FUNC0(p_FmMacsec, E_INVALID_HANDLE);
    FUNC0(p_FmMacsec->p_FmMacsecDriverParam, E_INVALID_HANDLE);

    p_FmMacsec->p_FmMacsecDriverParam->unknownSciTreatMode = treatMode;

    return E_OK;
}