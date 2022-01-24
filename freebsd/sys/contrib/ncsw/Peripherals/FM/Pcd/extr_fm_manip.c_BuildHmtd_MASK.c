#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  hmcdBasePtr; } ;
typedef  TYPE_1__ t_Hmtd ;
struct TYPE_5__ {scalar_t__ physicalMuramBase; int /*<<< orphan*/  h_Hc; } ;
typedef  TYPE_2__ t_FmPcd ;
typedef  scalar_t__ t_Error ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MINOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(uint8_t *p_Dest, uint8_t *p_Src, uint8_t *p_Hmcd,
                      t_FmPcd *p_FmPcd)
{
    t_Error err;

    /* Copy the HMTD */
    FUNC1(p_Dest, (uint8_t*)p_Src, 16);
    /* Replace the HMCT table pointer  */
    FUNC3(
            ((t_Hmtd *)p_Dest)->hmcdBasePtr,
            (uint32_t)(FUNC4(p_Hmcd) - ((t_FmPcd*)p_FmPcd)->physicalMuramBase));
    /* Call Host Command to replace HMTD by a new HMTD */
    err = FUNC0(
            p_FmPcd->h_Hc,
            (uint32_t)(FUNC4(p_Src) - p_FmPcd->physicalMuramBase),
            (uint32_t)(FUNC4(p_Dest) - p_FmPcd->physicalMuramBase));
    if (err)
        FUNC2(MINOR, err, ("Failed in dynamic manip change, continued to the rest of the owners."));
}