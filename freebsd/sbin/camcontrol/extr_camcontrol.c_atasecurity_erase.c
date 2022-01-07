
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ccb {int dummy; } ccb ;
typedef int u_int8_t ;
typedef int u_int32_t ;
struct cam_device {int dummy; } ;
struct ata_security_password {int dummy; } ;


 int AP_FLAG_BYT_BLOK_BLOCKS ;
 int AP_FLAG_TLEN_SECT_CNT ;
 int AP_PROTO_NON_DATA ;
 int AP_PROTO_PIO_OUT ;
 int ATA_SECURITY_ERASE_PREPARE ;
 int ATA_SECURITY_ERASE_UNIT ;
 int CAM_DIR_NONE ;
 int CAM_DIR_OUT ;
 int MSG_SIMPLE_Q_TAG ;
 int ata_do_cmd (struct cam_device*,union ccb*,int,int ,int ,int,int ,int ,int ,int ,int,int *,int,int ,int ) ;
 int atasecurity_notify (int ,struct ata_security_password*) ;
 int printf (char*) ;

__attribute__((used)) static int
atasecurity_erase(struct cam_device *device, union ccb *ccb,
    int retry_count, u_int32_t timeout,
    u_int32_t erase_timeout,
    struct ata_security_password *pwd, int quiet)
{
 int error;

 if (quiet == 0)
  atasecurity_notify(ATA_SECURITY_ERASE_PREPARE, ((void*)0));

 error = ata_do_cmd(device,
      ccb,
      retry_count,
               CAM_DIR_NONE,
                  AP_PROTO_NON_DATA,
                   0,
                    MSG_SIMPLE_Q_TAG,
                 ATA_SECURITY_ERASE_PREPARE,
                  0,
             0,
                      0,
                  ((void*)0),
                   0,
                 timeout,
                    0);

 if (error != 0)
  return error;

 if (quiet == 0)
  atasecurity_notify(ATA_SECURITY_ERASE_UNIT, pwd);

 error = ata_do_cmd(device,
      ccb,
      retry_count,
               CAM_DIR_OUT,
                  AP_PROTO_PIO_OUT,
                   AP_FLAG_BYT_BLOK_BLOCKS |
       AP_FLAG_TLEN_SECT_CNT,
                    MSG_SIMPLE_Q_TAG,
                 ATA_SECURITY_ERASE_UNIT,
                  0,
             0,
                      sizeof(*pwd) / 512,
                  (u_int8_t *)pwd,
                   sizeof(*pwd),
                 erase_timeout,
                    0);

 if (error == 0 && quiet == 0)
  printf("\nErase Complete\n");

 return error;
}
