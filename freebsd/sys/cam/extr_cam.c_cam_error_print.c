
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ccb {int dummy; } ccb ;
struct cam_device {int dummy; } ;
typedef int str ;
typedef int cam_error_string_flags ;
typedef int cam_error_proto_flags ;
typedef int FILE ;


 char* cam_error_string (struct cam_device*,union ccb*,char*,int,int ,int ) ;
 int fprintf (int *,char*,char*) ;

void
cam_error_print(struct cam_device *device, union ccb *ccb,
  cam_error_string_flags flags, cam_error_proto_flags proto_flags,
  FILE *ofile)
{
 char str[512];

 if ((device == ((void*)0)) || (ccb == ((void*)0)) || (ofile == ((void*)0)))
  return;

 fprintf(ofile, "%s", cam_error_string(device, ccb, str, sizeof(str),
  flags, proto_flags));
}
