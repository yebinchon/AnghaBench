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
typedef  TYPE_1__* pmap_t ;
typedef  int boolean_t ;
struct TYPE_3__ {int pm_flags; } ;

/* Variables and functions */
 int PMAP_EMULATE_AD_BITS ; 

__attribute__((used)) static __inline boolean_t
FUNC0(pmap_t pmap)
{

	return ((pmap->pm_flags & PMAP_EMULATE_AD_BITS) != 0);
}