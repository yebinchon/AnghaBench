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
typedef  int uint16_t ;
struct TYPE_4__ {int bdRingSize; } ;
struct TYPE_5__ {TYPE_1__ im; } ;
typedef  TYPE_2__ t_FmPort ;

/* Variables and functions */

__attribute__((used)) static __inline__ uint16_t FUNC0(t_FmPort *p_FmPort, uint16_t id)
{
    if (id < p_FmPort->im.bdRingSize-1)
        return (uint16_t)(id+1);
    else
        return 0;
}