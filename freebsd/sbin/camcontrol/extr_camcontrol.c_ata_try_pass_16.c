
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccb_pathinq {scalar_t__ protocol; } ;
struct cam_device {int dummy; } ;


 scalar_t__ PROTO_SCSI ;
 scalar_t__ get_cpi (struct cam_device*,struct ccb_pathinq*) ;
 int warnx (char*) ;

__attribute__((used)) static int
ata_try_pass_16(struct cam_device *device)
{
 struct ccb_pathinq cpi;

 if (get_cpi(device, &cpi) != 0) {
  warnx("couldn't get CPI");
  return (-1);
 }

 if (cpi.protocol == PROTO_SCSI) {

  return (1);
 }


 return (0);
}
