
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_device {int dummy; } ;
typedef size_t camcontrol_devtype ;


 unsigned int CC_DT_UNKNOWN ;
 char** devtype_names ;
 int fprintf (int ,char*,...) ;
 int get_device_type (struct cam_device*,int,int ,int ,size_t*) ;
 int stdout ;

__attribute__((used)) static int
getdevtype(struct cam_device *cam_dev)
{
 camcontrol_devtype dt;
 int error;




 error = get_device_type(cam_dev, -1, 0, 0, &dt);
 if (error != 0 || (unsigned)dt > CC_DT_UNKNOWN) {
  fprintf(stdout, "illegal\n");
  return (1);
 }
 fprintf(stdout, "%s\n", devtype_names[dt]);
 return (0);
}
