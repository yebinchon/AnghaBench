
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_et {int dummy; } ;
struct cam_ed {scalar_t__ serial_num_len; int * serial_num; scalar_t__ queue_flags; scalar_t__ inq_flags; int inq_data; scalar_t__ maxtags; scalar_t__ mintags; int * quirk; } ;
struct cam_eb {int dummy; } ;
typedef int lun_id_t ;


 int bzero (int *,int) ;
 int printf (char*) ;
 struct cam_ed* xpt_alloc_device (struct cam_eb*,struct cam_et*,int ) ;

__attribute__((used)) static struct cam_ed *
mmc_alloc_device(struct cam_eb *bus, struct cam_et *target, lun_id_t lun_id)
{
 struct cam_ed *device;

 printf("mmc_alloc_device()\n");
 device = xpt_alloc_device(bus, target, lun_id);
 if (device == ((void*)0))
  return (((void*)0));

 device->quirk = ((void*)0);
 device->mintags = 0;
 device->maxtags = 0;
 bzero(&device->inq_data, sizeof(device->inq_data));
 device->inq_flags = 0;
 device->queue_flags = 0;
 device->serial_num = ((void*)0);
 device->serial_num_len = 0;
 return (device);
}
