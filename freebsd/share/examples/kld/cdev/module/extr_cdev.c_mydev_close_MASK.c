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
 int /*<<< orphan*/  FUNC0 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int,struct proc*) ; 

int
FUNC2(struct cdev *dev, int flag, int otyp, struct thread *td)
{
    struct proc *procp = td->td_proc;

    FUNC1("mydev_close: dev_t=%lu, flag=%x, otyp=%x, procp=%p\n",
	      FUNC0(dev), flag, otyp, procp);
    return (0);
}