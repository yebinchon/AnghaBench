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
struct procstat {int dummy; } ;
struct kinfo_proc {int dummy; } ;

/* Variables and functions */
 char** FUNC0 (struct procstat*,struct kinfo_proc*,size_t,int /*<<< orphan*/ ) ; 

char **
FUNC1(struct procstat *procstat, struct kinfo_proc *p, size_t nchr)
{

	return (FUNC0(procstat, p, nchr, 0));
}