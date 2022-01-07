
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_quirk_entry {int maxtags; int mintags; } ;
struct cam_et {int dummy; } ;
struct cam_ed {scalar_t__ supported_vpds_len; int * supported_vpds; scalar_t__ device_id_len; int * device_id; scalar_t__ serial_num_len; int * serial_num; scalar_t__ queue_flags; scalar_t__ inq_flags; int inq_data; int maxtags; int mintags; void* quirk; } ;
struct cam_eb {int dummy; } ;
typedef int lun_id_t ;


 int bzero (int *,int) ;
 int nitems (struct scsi_quirk_entry*) ;
 struct scsi_quirk_entry* scsi_quirk_table ;
 struct cam_ed* xpt_alloc_device (struct cam_eb*,struct cam_et*,int ) ;

__attribute__((used)) static struct cam_ed *
scsi_alloc_device(struct cam_eb *bus, struct cam_et *target, lun_id_t lun_id)
{
 struct scsi_quirk_entry *quirk;
 struct cam_ed *device;

 device = xpt_alloc_device(bus, target, lun_id);
 if (device == ((void*)0))
  return (((void*)0));





 quirk = &scsi_quirk_table[nitems(scsi_quirk_table) - 1];
 device->quirk = (void *)quirk;
 device->mintags = quirk->mintags;
 device->maxtags = quirk->maxtags;
 bzero(&device->inq_data, sizeof(device->inq_data));
 device->inq_flags = 0;
 device->queue_flags = 0;
 device->serial_num = ((void*)0);
 device->serial_num_len = 0;
 device->device_id = ((void*)0);
 device->device_id_len = 0;
 device->supported_vpds = ((void*)0);
 device->supported_vpds_len = 0;
 return (device);
}
