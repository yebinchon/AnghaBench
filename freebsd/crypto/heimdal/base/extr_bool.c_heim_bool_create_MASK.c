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
typedef  int /*<<< orphan*/  heim_bool_t ;

/* Variables and functions */
 int /*<<< orphan*/  HEIM_TID_BOOL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 

heim_bool_t
FUNC1(int val)
{
    return FUNC0(!!val, HEIM_TID_BOOL);
}