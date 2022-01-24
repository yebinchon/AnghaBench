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
struct TYPE_2__ {int /*<<< orphan*/  str; } ;

/* Variables and functions */
 int /*<<< orphan*/  cmdbuf ; 
 int /*<<< orphan*/  cmdbuf_len ; 
 int /*<<< orphan*/  cmdbuf_pos ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* history_curr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	FUNC0();
	cmdbuf_len = cmdbuf_pos = FUNC3(history_curr->str);
	FUNC2(cmdbuf, history_curr->str, cmdbuf_len);
	FUNC1();
}