
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ccb {int dummy; } ccb ;
typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int u_int ;
struct cam_device {int dummy; } ;


 int AP_PROTO_NON_DATA ;
 int ATA_HPA_FEAT_FREEZE ;
 int ATA_SET_MAX_ADDRESS ;
 int ATA_SET_MAX_ADDRESS48 ;
 int CAM_DIR_NONE ;
 int MSG_SIMPLE_Q_TAG ;
 int ata_do_cmd (struct cam_device*,union ccb*,int,int ,int ,int ,int ,int ,int ,int ,int ,int *,int ,int,int) ;

__attribute__((used)) static int
atahpa_freeze_lock(struct cam_device *device, int retry_count,
     u_int32_t timeout, union ccb *ccb, int is48bit)
{
 u_int cmd;
 u_int8_t protocol;

 protocol = AP_PROTO_NON_DATA;
 cmd = (is48bit) ? ATA_SET_MAX_ADDRESS48 : ATA_SET_MAX_ADDRESS;

 return (ata_do_cmd(device,
      ccb,
      retry_count,
               CAM_DIR_NONE,
                  protocol,
                   0,
                    MSG_SIMPLE_Q_TAG,
                 cmd,
                  ATA_HPA_FEAT_FREEZE,
             0,
                      0,
                  ((void*)0),
                   0,
      timeout ? timeout : 1000,
      is48bit));
}
