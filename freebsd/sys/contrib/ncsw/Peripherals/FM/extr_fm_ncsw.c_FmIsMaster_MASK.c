#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ t_Handle ;
struct TYPE_2__ {scalar_t__ guestId; } ;
typedef  TYPE_1__ t_Fm ;

/* Variables and functions */
 scalar_t__ NCSW_MASTER_ID ; 

bool FUNC0(t_Handle h_Fm)
{
    t_Fm     *p_Fm = (t_Fm*)h_Fm;

    return (p_Fm->guestId == NCSW_MASTER_ID);
}