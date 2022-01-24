#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* ctl_private; } ;
union ctl_io {TYPE_2__ io_hdr; } ;
struct ctl_fe_ioctl_params {int /*<<< orphan*/  ioctl_mtx; int /*<<< orphan*/  sem; int /*<<< orphan*/  state; } ;
struct TYPE_3__ {scalar_t__ ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_IOCTL_DONE ; 
 size_t CTL_PRIV_FRONTEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(union ctl_io *io)
{
	struct ctl_fe_ioctl_params *params;

	params = (struct ctl_fe_ioctl_params *)
		io->io_hdr.ctl_private[CTL_PRIV_FRONTEND].ptr;

	FUNC1(&params->ioctl_mtx);
	params->state = CTL_IOCTL_DONE;
	FUNC0(&params->sem);
	FUNC2(&params->ioctl_mtx);
}