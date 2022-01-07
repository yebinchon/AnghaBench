
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int status; } ;
struct TYPE_7__ {int sense_len; int scsi_status; int sense_data; } ;
union ctl_io {TYPE_2__ io_hdr; TYPE_3__ scsiio; } ;
struct TYPE_5__ {int status; } ;
struct TYPE_8__ {int sense_len; int scsi_status; int sense_data; } ;
union ctl_ha_msg {TYPE_1__ hdr; TYPE_4__ scsi; } ;


 int memcpy (int *,int *,int ) ;

__attribute__((used)) static void
ctl_copy_sense_data_back(union ctl_io *src, union ctl_ha_msg *dest)
{

 memcpy(&dest->scsi.sense_data, &src->scsiio.sense_data,
     src->scsiio.sense_len);
 dest->scsi.scsi_status = src->scsiio.scsi_status;
 dest->scsi.sense_len = src->scsiio.sense_len;
 dest->hdr.status = src->io_hdr.status;
}
