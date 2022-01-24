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
struct thread {struct proc* td_proc; } ;
struct proc {int dummy; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  buf ; 
 int /*<<< orphan*/  FUNC0 (struct cdev*) ; 
 scalar_t__ len ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int,struct proc*) ; 

int
FUNC3(struct cdev *dev, int flag, int otyp, struct thread *td)
{
    struct proc *procp = td->td_proc;

    FUNC2("mydev_open: dev_t=%lu, flag=%x, otyp=%x, procp=%p\n",
	   FUNC0(dev), flag, otyp, procp);
    FUNC1(&buf, '\0', 513);
    len = 0;
    return (0);
}