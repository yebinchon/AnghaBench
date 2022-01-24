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
struct rusage32 {int dummy; } ;
struct rusage {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rusage const,struct rusage32,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rusage const,struct rusage32,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ru_idrss ; 
 int /*<<< orphan*/  ru_inblock ; 
 int /*<<< orphan*/  ru_isrss ; 
 int /*<<< orphan*/  ru_ixrss ; 
 int /*<<< orphan*/  ru_majflt ; 
 int /*<<< orphan*/  ru_maxrss ; 
 int /*<<< orphan*/  ru_minflt ; 
 int /*<<< orphan*/  ru_msgrcv ; 
 int /*<<< orphan*/  ru_msgsnd ; 
 int /*<<< orphan*/  ru_nivcsw ; 
 int /*<<< orphan*/  ru_nsignals ; 
 int /*<<< orphan*/  ru_nswap ; 
 int /*<<< orphan*/  ru_nvcsw ; 
 int /*<<< orphan*/  ru_oublock ; 
 int /*<<< orphan*/  ru_stime ; 
 int /*<<< orphan*/  ru_utime ; 

void
FUNC2(const struct rusage *s, struct rusage32 *s32)
{

	FUNC1(*s, *s32, ru_utime);
	FUNC1(*s, *s32, ru_stime);
	FUNC0(*s, *s32, ru_maxrss);
	FUNC0(*s, *s32, ru_ixrss);
	FUNC0(*s, *s32, ru_idrss);
	FUNC0(*s, *s32, ru_isrss);
	FUNC0(*s, *s32, ru_minflt);
	FUNC0(*s, *s32, ru_majflt);
	FUNC0(*s, *s32, ru_nswap);
	FUNC0(*s, *s32, ru_inblock);
	FUNC0(*s, *s32, ru_oublock);
	FUNC0(*s, *s32, ru_msgsnd);
	FUNC0(*s, *s32, ru_msgrcv);
	FUNC0(*s, *s32, ru_nsignals);
	FUNC0(*s, *s32, ru_nvcsw);
	FUNC0(*s, *s32, ru_nivcsw);
}