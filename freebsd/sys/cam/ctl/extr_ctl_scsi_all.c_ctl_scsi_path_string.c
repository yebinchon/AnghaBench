
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int initid; int targ_port; int targ_lun; int targ_mapped_lun; } ;
struct TYPE_3__ {TYPE_2__ nexus; } ;
union ctl_io {TYPE_1__ io_hdr; } ;


 int snprintf (char*,int,char*,int,int,int,int) ;

void
ctl_scsi_path_string(union ctl_io *io, char *path_str, int len)
{

 snprintf(path_str, len, "(%u:%u:%u/%u): ",
     io->io_hdr.nexus.initid, io->io_hdr.nexus.targ_port,
     io->io_hdr.nexus.targ_lun, io->io_hdr.nexus.targ_mapped_lun);
}
