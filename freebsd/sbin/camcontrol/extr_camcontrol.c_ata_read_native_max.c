
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
typedef int u_int8_t ;
typedef int u_int64_t ;
typedef int u_int32_t ;
typedef int u_int ;
struct cam_device {int dummy; } ;
struct TYPE_2__ {int command2; } ;
struct ata_params {TYPE_1__ support; } ;


 int AP_EXTEND ;
 int AP_FLAG_CHK_COND ;
 int AP_PROTO_NON_DATA ;
 int ATA_READ_NATIVE_MAX_ADDRESS ;
 int ATA_READ_NATIVE_MAX_ADDRESS48 ;
 int ATA_SUPPORT_ADDRESS48 ;
 int CAM_DIR_NONE ;
 int MSG_SIMPLE_Q_TAG ;
 int ata_do_cmd (struct cam_device*,union ccb*,int,int ,int ,int ,int ,int,int ,int ,int ,int *,int ,int,int) ;
 int atahpa_proc_resp (struct cam_device*,union ccb*,int *) ;

__attribute__((used)) static int
ata_read_native_max(struct cam_device *device, int retry_count,
        u_int32_t timeout, union ccb *ccb,
        struct ata_params *parm, u_int64_t *hpasize)
{
 int error;
 u_int cmd, is48bit;
 u_int8_t protocol;

 is48bit = parm->support.command2 & ATA_SUPPORT_ADDRESS48;
 protocol = AP_PROTO_NON_DATA;

 if (is48bit) {
  cmd = ATA_READ_NATIVE_MAX_ADDRESS48;
  protocol |= AP_EXTEND;
 } else {
  cmd = ATA_READ_NATIVE_MAX_ADDRESS;
 }

 error = ata_do_cmd(device,
      ccb,
      retry_count,
               CAM_DIR_NONE,
                  protocol,
                   AP_FLAG_CHK_COND,
                    MSG_SIMPLE_Q_TAG,
                 cmd,
                  0,
             0,
                      0,
                  ((void*)0),
                   0,
      timeout ? timeout : 5000,
      is48bit);

 if (error)
  return (error);

 return atahpa_proc_resp(device, ccb, hpasize);
}
