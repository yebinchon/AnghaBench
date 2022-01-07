
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
typedef int u_int64_t ;
struct cam_device {char* device_name; int dev_unit_num; } ;
struct TYPE_2__ {int command1; } ;
struct ata_params {int support2; TYPE_1__ support; } ;


 int ATA_SUPPORT_AMAX_ADDR ;
 int ATA_SUPPORT_PROTECTED ;
 int CAM_ARG_VERBOSE ;
 int arglist ;
 scalar_t__ ata_do_identify (struct cam_device*,int,int,union ccb*,struct ata_params**) ;
 int ata_get_native_max (struct cam_device*,int,int,union ccb*,int *) ;
 int ata_print_ident (struct ata_params*) ;
 int ata_read_native_max (struct cam_device*,int,int,union ccb*,struct ata_params*,int *) ;
 int ataama_print (struct ata_params*,int ,int ) ;
 int atacapprint (struct ata_params*) ;
 int atahpa_print (struct ata_params*,int ,int ) ;
 int cam_freeccb (union ccb*) ;
 union ccb* cam_getccb (struct cam_device*) ;
 int camxferrate (struct cam_device*) ;
 int dump_data (void*,int) ;
 int free (struct ata_params*) ;
 int printf (char*,char*,int ) ;
 int warnx (char*) ;

__attribute__((used)) static int
ataidentify(struct cam_device *device, int retry_count, int timeout)
{
 union ccb *ccb;
 struct ata_params *ident_buf;
 u_int64_t hpasize = 0, nativesize = 0;

 if ((ccb = cam_getccb(device)) == ((void*)0)) {
  warnx("couldn't allocate CCB");
  return (1);
 }

 if (ata_do_identify(device, retry_count, timeout, ccb, &ident_buf) != 0) {
  cam_freeccb(ccb);
  return (1);
 }

 if (arglist & CAM_ARG_VERBOSE) {
  printf("%s%d: Raw identify data:\n",
      device->device_name, device->dev_unit_num);
  dump_data((void*)ident_buf, sizeof(struct ata_params));
 }

 if (ident_buf->support.command1 & ATA_SUPPORT_PROTECTED) {
  ata_read_native_max(device, retry_count, timeout, ccb,
        ident_buf, &hpasize);
 }
 if (ident_buf->support2 & ATA_SUPPORT_AMAX_ADDR) {
  ata_get_native_max(device, retry_count, timeout, ccb,
       &nativesize);
 }

 printf("%s%d: ", device->device_name, device->dev_unit_num);
 ata_print_ident(ident_buf);
 camxferrate(device);
 atacapprint(ident_buf);
 atahpa_print(ident_buf, hpasize, 0);
 ataama_print(ident_buf, nativesize, 0);

 free(ident_buf);
 cam_freeccb(ccb);

 return (0);
}
