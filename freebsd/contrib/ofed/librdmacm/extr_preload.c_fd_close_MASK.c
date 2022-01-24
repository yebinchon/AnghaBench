#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fd_info {int fd; int type; } ;
typedef  enum fd_type { ____Placeholder_fd_type } fd_type ;
struct TYPE_2__ {int /*<<< orphan*/  (* close ) (int) ;} ;

/* Variables and functions */
 int fd_normal ; 
 int /*<<< orphan*/  FUNC0 (struct fd_info*) ; 
 int /*<<< orphan*/  idm ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct fd_info* FUNC2 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__ real ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static enum fd_type FUNC4(int index, int *fd)
{
	struct fd_info *fdi;
	enum fd_type type;

	fdi = FUNC2(&idm, index);
	if (fdi) {
		FUNC1(&idm, index);
		*fd = fdi->fd;
		type = fdi->type;
		real.close(index);
		FUNC0(fdi);
	} else {
		*fd = index;
		type = fd_normal;
	}
	return type;
}