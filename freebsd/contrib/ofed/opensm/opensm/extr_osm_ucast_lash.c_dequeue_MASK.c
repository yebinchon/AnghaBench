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
struct TYPE_3__ {scalar_t__ q_state; } ;
typedef  TYPE_1__ switch_t ;
typedef  int /*<<< orphan*/  cl_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ MST_MEMBER ; 
 scalar_t__ Q_MEMBER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) inline static void FUNC2(cl_list_t * bfsq, switch_t ** sw)
{
	*sw = (switch_t *) FUNC1(bfsq);
	FUNC0((*sw)->q_state == Q_MEMBER);
	(*sw)->q_state = MST_MEMBER;
}