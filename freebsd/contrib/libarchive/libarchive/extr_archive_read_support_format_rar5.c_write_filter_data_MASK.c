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
typedef  size_t uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/ * filtered_buf; } ;
struct rar5 {TYPE_1__ cstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void FUNC1(struct rar5* rar, uint32_t offset,
    uint32_t value)
{
	FUNC0(&rar->cstate.filtered_buf[offset], value);
}