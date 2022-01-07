
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ccb {int dummy; } ccb ;
typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int u_int ;
struct cam_device {int dummy; } ;
struct ata_set_max_pwd {int dummy; } ;


 int AP_FLAG_BYT_BLOK_BLOCKS ;
 int AP_FLAG_TLEN_SECT_CNT ;
 int AP_PROTO_PIO_OUT ;
 int ATA_HPA_FEAT_SET_PWD ;
 int ATA_SET_MAX_ADDRESS ;
 int ATA_SET_MAX_ADDRESS48 ;
 int CAM_DIR_OUT ;
 int MSG_SIMPLE_Q_TAG ;
 int ata_do_cmd (struct cam_device*,union ccb*,int,int ,int ,int,int ,int ,int ,int ,int,int *,int,int,int) ;

__attribute__((used)) static int
atahpa_password(struct cam_device *device, int retry_count,
  u_int32_t timeout, union ccb *ccb,
  int is48bit, struct ata_set_max_pwd *pwd)
{
 u_int cmd;
 u_int8_t protocol;

 protocol = AP_PROTO_PIO_OUT;
 cmd = (is48bit) ? ATA_SET_MAX_ADDRESS48 : ATA_SET_MAX_ADDRESS;

 return (ata_do_cmd(device,
      ccb,
      retry_count,
               CAM_DIR_OUT,
                  protocol,
                   AP_FLAG_BYT_BLOK_BLOCKS |
       AP_FLAG_TLEN_SECT_CNT,
                    MSG_SIMPLE_Q_TAG,
                 cmd,
                  ATA_HPA_FEAT_SET_PWD,
             0,
                      sizeof(*pwd) / 512,
                  (u_int8_t*)pwd,
                   sizeof(*pwd),
      timeout ? timeout : 1000,
      is48bit));
}
