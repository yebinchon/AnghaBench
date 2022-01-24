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
struct thread {int dummy; } ;
struct freebsd32_cpuset_setdomain_args {int /*<<< orphan*/  policy; int /*<<< orphan*/  mask; int /*<<< orphan*/  domainsetsize; int /*<<< orphan*/  id; int /*<<< orphan*/  which; int /*<<< orphan*/  level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  id_t ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC2(struct thread *td,
    struct freebsd32_cpuset_setdomain_args *uap)
{

	return (FUNC1(td, uap->level, uap->which,
	    FUNC0(id_t,uap->id), uap->domainsetsize, uap->mask, uap->policy));
}