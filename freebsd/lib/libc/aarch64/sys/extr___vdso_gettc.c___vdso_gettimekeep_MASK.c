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
struct vdso_timekeep {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_TIMEKEEP ; 
 int FUNC0 (int /*<<< orphan*/ ,struct vdso_timekeep**,int) ; 

int
FUNC1(struct vdso_timekeep **tk)
{

	return (FUNC0(AT_TIMEKEEP, tk, sizeof(*tk)));
}