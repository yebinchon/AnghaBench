
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ccb {int dummy; } ccb ;
typedef int u_int32_t ;
struct cam_device {int dummy; } ;


 int AP_EXTEND ;
 int AP_PROTO_NON_DATA ;
 int ATA_AMAX_ADDR ;
 int ATA_AMAX_ADDR_FREEZE ;
 int CAM_DIR_NONE ;
 int MSG_SIMPLE_Q_TAG ;
 int ata_do_cmd (struct cam_device*,union ccb*,int,int ,int,int ,int ,int ,int ,int ,int ,int *,int ,int,int) ;

__attribute__((used)) static int
ataama_freeze(struct cam_device *device, int retry_count,
     u_int32_t timeout, union ccb *ccb)
{

 return (ata_do_cmd(device,
      ccb,
      retry_count,
               CAM_DIR_NONE,
                  AP_PROTO_NON_DATA | AP_EXTEND,
                   0,
                    MSG_SIMPLE_Q_TAG,
                 ATA_AMAX_ADDR,
                  ATA_AMAX_ADDR_FREEZE,
             0,
                      0,
                  ((void*)0),
                   0,
      timeout ? timeout : 30 * 1000,
                    1));
}
