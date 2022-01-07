
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ccb {int dummy; } ccb ;
typedef int u_int32_t ;
struct cam_device {int dummy; } ;


 int AP_PROTO_NON_DATA ;
 int ATA_SECURITY_FREEZE_LOCK ;
 int CAM_DIR_NONE ;
 int MSG_SIMPLE_Q_TAG ;
 int ata_do_cmd (struct cam_device*,union ccb*,int,int ,int ,int ,int ,int ,int ,int ,int ,int *,int ,int ,int ) ;
 int atasecurity_notify (int ,int *) ;

__attribute__((used)) static int
atasecurity_freeze(struct cam_device *device, union ccb *ccb,
     int retry_count, u_int32_t timeout, int quiet)
{

 if (quiet == 0)
  atasecurity_notify(ATA_SECURITY_FREEZE_LOCK, ((void*)0));

 return ata_do_cmd(device,
     ccb,
     retry_count,
              CAM_DIR_NONE,
                 AP_PROTO_NON_DATA,
                  0,
                   MSG_SIMPLE_Q_TAG,
                ATA_SECURITY_FREEZE_LOCK,
                 0,
            0,
                     0,
                 ((void*)0),
                  0,
                timeout,
                   0);
}
