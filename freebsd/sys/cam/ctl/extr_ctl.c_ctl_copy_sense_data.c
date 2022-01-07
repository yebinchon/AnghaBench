
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int status; } ;
struct TYPE_8__ {int sense_len; int scsi_status; int sense_data; } ;
union ctl_io {TYPE_1__ io_hdr; TYPE_4__ scsiio; } ;
struct TYPE_6__ {int status; } ;
struct TYPE_7__ {int sense_len; int scsi_status; int sense_data; } ;
union ctl_ha_msg {TYPE_2__ hdr; TYPE_3__ scsi; } ;


 int memcpy (int *,int *,int ) ;

__attribute__((used)) static void
ctl_copy_sense_data(union ctl_ha_msg *src, union ctl_io *dest)
{

 memcpy(&dest->scsiio.sense_data, &src->scsi.sense_data,
     src->scsi.sense_len);
 dest->scsiio.scsi_status = src->scsi.scsi_status;
 dest->scsiio.sense_len = src->scsi.sense_len;
 dest->io_hdr.status = src->hdr.status;
}
