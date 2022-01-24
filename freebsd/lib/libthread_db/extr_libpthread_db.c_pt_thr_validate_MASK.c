#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  th_tid; int /*<<< orphan*/  th_ta; } ;
typedef  TYPE_1__ td_thrhandle_t ;
typedef  int td_err_e ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static td_err_e
FUNC2(const td_thrhandle_t *th)
{
	td_thrhandle_t temp;
	int ret;

	FUNC0();

	ret = FUNC1(th->th_ta, th->th_tid,
	                       &temp);
	return (ret);
}