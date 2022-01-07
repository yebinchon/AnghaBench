
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int tag_type; int tag_num; int task_action; } ;
struct TYPE_6__ {int tag_type; int tag_num; } ;
struct TYPE_4__ {int io_type; } ;
union ctl_io {TYPE_2__ taskio; TYPE_3__ scsiio; TYPE_1__ io_hdr; } ;
struct sbuf {int dummy; } ;
typedef int path_str ;





 int ctl_scsi_command_string (TYPE_3__*,int *,struct sbuf*) ;
 int ctl_scsi_path_string (union ctl_io*,char*,int) ;
 char* ctl_scsi_task_string (TYPE_2__*) ;
 int sbuf_cat (struct sbuf*,char*) ;
 int sbuf_printf (struct sbuf*,char*,...) ;

void
ctl_io_sbuf(union ctl_io *io, struct sbuf *sb)
{
 const char *task_desc;
 char path_str[64];

 ctl_scsi_path_string(io, path_str, sizeof(path_str));

 switch (io->io_hdr.io_type) {
 case 130:
  sbuf_cat(sb, path_str);
  ctl_scsi_command_string(&io->scsiio, ((void*)0), sb);
  sbuf_printf(sb, " Tag: %#x/%d\n",
       io->scsiio.tag_num, io->scsiio.tag_type);
  break;
 case 129:
  sbuf_cat(sb, path_str);
  task_desc = ctl_scsi_task_string(&io->taskio);
  if (task_desc == ((void*)0))
   sbuf_printf(sb, "Unknown Task Action %d (%#x)",
       io->taskio.task_action, io->taskio.task_action);
  else
   sbuf_printf(sb, "Task Action: %s", task_desc);
  switch (io->taskio.task_action) {
  case 128:
   sbuf_printf(sb, " Tag: %#x/%d\n",
       io->taskio.tag_num, io->taskio.tag_type);
   break;
  default:
   sbuf_printf(sb, "\n");
   break;
  }
  break;
 default:
  break;
 }
}
