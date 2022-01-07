
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error; } ;
typedef TYPE_1__ libbe_handle_t ;
 int BE_ERR_SUCCESS ;



 int assert (int) ;

const char *
libbe_error_description(libbe_handle_t *lbh)
{

 switch (lbh->error) {
 case 142:
  return ("invalid boot environment name");

 case 143:
  return ("boot environment name already taken");

 case 138:
  return ("specified boot environment does not exist");

 case 131:
  return ("insufficient permissions");

 case 145:
  return ("cannot destroy active boot environment");

 case 144:
  return ("cannot destroy mounted boot env unless forced");

 case 146:
  return ("path not suitable for operation");

 case 133:
  return ("specified path is busy");

 case 132:
  return ("provided path name exceeds maximum length limit");

 case 147:
  return ("mountpoint is not \"/\"");

 case 135:
  return ("could not open snapshot's origin");

 case 139:
  return ("boot environment is already mounted");

 case 136:
  return ("boot environment is not mounted");

 case 128:
  return ("calling zfs_open() failed");

 case 129:
  return ("error when calling zfs_clone() to create boot env");

 case 140:
  return ("input/output error");

 case 134:
  return ("operation not supported on this pool");

 case 137:
  return ("insufficient memory");

 case 130:
  return ("unknown error");

 case 141:
  return ("invalid origin");

 default:
  assert(lbh->error == BE_ERR_SUCCESS);
  return ("no error");
 }
}
