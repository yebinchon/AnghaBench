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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct vmspace {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ept_pinit ; 
 struct vmspace* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct vmspace *
FUNC1(vm_offset_t min, vm_offset_t max)
{

	return (FUNC0(min, max, ept_pinit));
}