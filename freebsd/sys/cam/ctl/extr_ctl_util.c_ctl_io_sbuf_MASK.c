#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  tag_type; int /*<<< orphan*/  tag_num; int /*<<< orphan*/  task_action; } ;
struct TYPE_6__ {int /*<<< orphan*/  tag_type; int /*<<< orphan*/  tag_num; } ;
struct TYPE_4__ {int io_type; } ;
union ctl_io {TYPE_2__ taskio; TYPE_3__ scsiio; TYPE_1__ io_hdr; } ;
struct sbuf {int dummy; } ;
typedef  int /*<<< orphan*/  path_str ;

/* Variables and functions */
#define  CTL_IO_SCSI 130 
#define  CTL_IO_TASK 129 
#define  CTL_TASK_ABORT_TASK 128 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,struct sbuf*) ; 
 int /*<<< orphan*/  FUNC1 (union ctl_io*,char*,int) ; 
 char* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*,char*,...) ; 

void
FUNC5(union ctl_io *io, struct sbuf *sb)
{
	const char *task_desc;
	char path_str[64];

	FUNC1(io, path_str, sizeof(path_str));

	switch (io->io_hdr.io_type) {
	case CTL_IO_SCSI:
		FUNC3(sb, path_str);
		FUNC0(&io->scsiio, NULL, sb);
		FUNC4(sb, " Tag: %#x/%d\n",
			    io->scsiio.tag_num, io->scsiio.tag_type);
		break;
	case CTL_IO_TASK:
		FUNC3(sb, path_str);
		task_desc = FUNC2(&io->taskio);
		if (task_desc == NULL)
			FUNC4(sb, "Unknown Task Action %d (%#x)",
			    io->taskio.task_action, io->taskio.task_action);
		else
			FUNC4(sb, "Task Action: %s", task_desc);
		switch (io->taskio.task_action) {
		case CTL_TASK_ABORT_TASK:
			FUNC4(sb, " Tag: %#x/%d\n",
			    io->taskio.tag_num, io->taskio.tag_type);
			break;
		default:
			FUNC4(sb, "\n");
			break;
		}
		break;
	default:
		break;
	}
}