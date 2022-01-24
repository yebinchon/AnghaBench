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
union ctl_io {int /*<<< orphan*/  scsiio; } ;
struct ctl_lba_len_flags {int flags; } ;
struct TYPE_2__ {scalar_t__ len; } ;

/* Variables and functions */
 struct ctl_lba_len_flags* FUNC0 (union ctl_io*) ; 
 int CTL_LLF_COMPARE ; 
 int CTL_LLF_VERIFY ; 
 int CTL_RETVAL_COMPLETE ; 
 TYPE_1__* FUNC1 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC2 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC3 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC4 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(union ctl_io *io)
{
	struct ctl_lba_len_flags *lbalen = FUNC0(io);

	if (lbalen->flags & CTL_LLF_VERIFY) {
		FUNC5(&io->scsiio);
		FUNC4(io);
		return (CTL_RETVAL_COMPLETE);
	}
	FUNC1(io)->len = 0;
	if (lbalen->flags & CTL_LLF_COMPARE)
		FUNC2(io);
	else
		FUNC3(io);
	return (CTL_RETVAL_COMPLETE);
}