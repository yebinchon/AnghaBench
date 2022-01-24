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
struct filecaps {int /*<<< orphan*/  fc_rights; } ;
struct cloudabi_sys_fd_create1_args {int type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_FSTAT ; 
 int /*<<< orphan*/  CAP_FTRUNCATE ; 
 int /*<<< orphan*/  CAP_MMAP_RWX ; 
#define  CLOUDABI_FILETYPE_SHARED_MEMORY 128 
 int EINVAL ; 
 int /*<<< orphan*/  F_SEAL_SEAL ; 
 int O_CLOEXEC ; 
 int O_RDWR ; 
 int /*<<< orphan*/  SHM_ANON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct filecaps*,int /*<<< orphan*/ ) ; 

int
FUNC2(struct thread *td,
    struct cloudabi_sys_fd_create1_args *uap)
{
	struct filecaps fcaps = {};

	switch (uap->type) {
	case CLOUDABI_FILETYPE_SHARED_MEMORY:
		FUNC0(&fcaps.fc_rights, CAP_FSTAT, CAP_FTRUNCATE,
		    CAP_MMAP_RWX);
		return (FUNC1(td, SHM_ANON, O_RDWR | O_CLOEXEC, 0,
		    &fcaps, F_SEAL_SEAL));
	default:
		return (EINVAL);
	}
}