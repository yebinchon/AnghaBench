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
struct vt_mode {int /*<<< orphan*/  frsig; void* acqsig; void* relsig; } ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct linux_ioctl_args {int cmd; scalar_t__ arg; int /*<<< orphan*/  fd; } ;
struct ioctl_args {int dummy; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  mode ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOIOCTL ; 
 int KDGETLED ; 
 int KDGETMODE ; 
 int KDGKBMODE ; 
 int KDMKTONE ; 
 int KDSETLED ; 
 int KDSETMODE ; 
 int /*<<< orphan*/  KDSKBMODE ; 
 int KIOCSOUND ; 
 int K_RAW ; 
 int K_XLATE ; 
#define  LINUX_KBD_MEDIUMRAW 145 
#define  LINUX_KBD_RAW 144 
#define  LINUX_KBD_XLATE 143 
#define  LINUX_KDGETLED 142 
#define  LINUX_KDGETMODE 141 
#define  LINUX_KDGKBMODE 140 
#define  LINUX_KDMKTONE 139 
#define  LINUX_KDSETLED 138 
#define  LINUX_KDSETMODE 137 
#define  LINUX_KDSKBMODE 136 
#define  LINUX_KIOCSOUND 135 
 int /*<<< orphan*/  FUNC0 (void*) ; 
#define  LINUX_VT_ACTIVATE 134 
#define  LINUX_VT_GETMODE 133 
#define  LINUX_VT_GETSTATE 132 
#define  LINUX_VT_OPENQRY 131 
#define  LINUX_VT_RELDISP 130 
#define  LINUX_VT_SETMODE 129 
#define  LINUX_VT_WAITACTIVE 128 
 int VT_ACTIVATE ; 
 int VT_GETACTIVE ; 
 int VT_GETMODE ; 
 int VT_OPENQRY ; 
 int VT_RELDISP ; 
 int VT_SETMODE ; 
 int VT_WAITACTIVE ; 
 int /*<<< orphan*/  cap_ioctl_rights ; 
 int FUNC1 (void*,struct vt_mode*,int) ; 
 int FUNC2 (struct vt_mode*,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,struct thread*) ; 
 int FUNC4 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct file**) ; 
 int FUNC5 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 
 void* FUNC6 (void*) ; 
 int FUNC7 (struct thread*,struct ioctl_args*) ; 

__attribute__((used)) static int
FUNC8(struct thread *td, struct linux_ioctl_args *args)
{
	struct file *fp;
	int error;

	error = FUNC4(td, args->fd, &cap_ioctl_rights, &fp);
	if (error != 0)
		return (error);
	switch (args->cmd & 0xffff) {

	case LINUX_KIOCSOUND:
		args->cmd = KIOCSOUND;
		error = (FUNC7(td, (struct ioctl_args *)args));
		break;

	case LINUX_KDMKTONE:
		args->cmd = KDMKTONE;
		error = (FUNC7(td, (struct ioctl_args *)args));
		break;

	case LINUX_KDGETLED:
		args->cmd = KDGETLED;
		error = (FUNC7(td, (struct ioctl_args *)args));
		break;

	case LINUX_KDSETLED:
		args->cmd = KDSETLED;
		error = (FUNC7(td, (struct ioctl_args *)args));
		break;

	case LINUX_KDSETMODE:
		args->cmd = KDSETMODE;
		error = (FUNC7(td, (struct ioctl_args *)args));
		break;

	case LINUX_KDGETMODE:
		args->cmd = KDGETMODE;
		error = (FUNC7(td, (struct ioctl_args *)args));
		break;

	case LINUX_KDGKBMODE:
		args->cmd = KDGKBMODE;
		error = (FUNC7(td, (struct ioctl_args *)args));
		break;

	case LINUX_KDSKBMODE: {
		int kbdmode;
		switch (args->arg) {
		case LINUX_KBD_RAW:
			kbdmode = K_RAW;
			break;
		case LINUX_KBD_XLATE:
			kbdmode = K_XLATE;
			break;
		case LINUX_KBD_MEDIUMRAW:
			kbdmode = K_RAW;
			break;
		default:
			FUNC3(fp, td);
			return (EINVAL);
		}
		error = (FUNC5(fp, KDSKBMODE, (caddr_t)&kbdmode,
		    td->td_ucred, td));
		break;
	}

	case LINUX_VT_OPENQRY:
		args->cmd = VT_OPENQRY;
		error = (FUNC7(td, (struct ioctl_args *)args));
		break;

	case LINUX_VT_GETMODE:
		args->cmd = VT_GETMODE;
		error = (FUNC7(td, (struct ioctl_args *)args));
		break;

	case LINUX_VT_SETMODE: {
		struct vt_mode mode;
		if ((error = FUNC1((void *)args->arg, &mode, sizeof(mode))))
			break;
		if (FUNC0(mode.relsig))
			mode.relsig = FUNC6(mode.relsig);
		else
			mode.relsig = 0;
		if (FUNC0(mode.acqsig))
			mode.acqsig = FUNC6(mode.acqsig);
		else
			mode.acqsig = 0;
		/* XXX. Linux ignores frsig and set it to 0. */
		mode.frsig = 0;
		if ((error = FUNC2(&mode, (void *)args->arg, sizeof(mode))))
			break;
		args->cmd = VT_SETMODE;
		error = (FUNC7(td, (struct ioctl_args *)args));
		break;
	}

	case LINUX_VT_GETSTATE:
		args->cmd = VT_GETACTIVE;
		error = (FUNC7(td, (struct ioctl_args *)args));
		break;

	case LINUX_VT_RELDISP:
		args->cmd = VT_RELDISP;
		error = (FUNC7(td, (struct ioctl_args *)args));
		break;

	case LINUX_VT_ACTIVATE:
		args->cmd = VT_ACTIVATE;
		error = (FUNC7(td, (struct ioctl_args *)args));
		break;

	case LINUX_VT_WAITACTIVE:
		args->cmd = VT_WAITACTIVE;
		error = (FUNC7(td, (struct ioctl_args *)args));
		break;

	default:
		error = ENOIOCTL;
		break;
	}

	FUNC3(fp, td);
	return (error);
}