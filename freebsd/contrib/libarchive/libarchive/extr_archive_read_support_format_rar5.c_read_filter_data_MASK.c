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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  window_mask; int /*<<< orphan*/  window_buf; } ;
struct rar5 {TYPE_1__ cstate; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static uint32_t FUNC2(struct rar5* rar, uint32_t offset) {
	uint8_t linear_buf[4];
	FUNC1(linear_buf, rar->cstate.window_buf,
	    rar->cstate.window_mask, offset, offset + 4);
	return FUNC0(linear_buf);
}