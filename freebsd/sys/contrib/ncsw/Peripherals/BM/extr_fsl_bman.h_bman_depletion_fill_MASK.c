#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct bman_depletion {scalar_t__* __state; } ;

/* Variables and functions */

__attribute__((used)) static __inline__ void FUNC0(struct bman_depletion *c)
{
    c->__state[0] = c->__state[1] = (uint32_t)~0;
}