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
typedef  int /*<<< orphan*/  u_long ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int ENOTTY ; 
 int FUNC0 (struct cdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct thread*,int (*) (struct cdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct thread*)) ; 
 int FUNC1 (struct cdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct thread*) ; 

__attribute__((used)) static int
FUNC2(struct cdev *dev, u_long cmd, caddr_t addr, int flag, struct thread *td)
{
	int error;

	if ((error = FUNC1(dev, cmd, addr, flag, td)) == ENOTTY) {
		error = FUNC0(dev, cmd, addr, flag, td, xptdoioctl);
	}
	return (error);
}