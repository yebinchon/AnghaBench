
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccb_pathinq {scalar_t__ protocol; } ;
struct cam_device {int dummy; } ;


 scalar_t__ PROTO_NVME ;
 int ataidentify (struct cam_device*,int,int) ;
 scalar_t__ get_cpi (struct cam_device*,struct ccb_pathinq*) ;
 int nvmeidentify (struct cam_device*,int,int) ;
 int warnx (char*) ;

__attribute__((used)) static int
identify(struct cam_device *device, int retry_count, int timeout)
{
 return (ataidentify(device, retry_count, timeout));
}
