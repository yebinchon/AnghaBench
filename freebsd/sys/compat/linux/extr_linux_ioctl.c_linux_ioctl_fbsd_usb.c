
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_ioctl_args {int cmd; } ;
struct ioctl_args {int dummy; } ;


 int ENOIOCTL ;
 int USB_DEVICEENUMERATE ;
 int USB_DEV_QUIRK_ADD ;
 int USB_DEV_QUIRK_GET ;
 int USB_DEV_QUIRK_REMOVE ;
 int USB_DO_REQUEST ;
 int USB_FS_CLEAR_STALL_SYNC ;
 int USB_FS_CLOSE ;
 int USB_FS_COMPLETE ;
 int USB_FS_INIT ;
 int USB_FS_OPEN ;
 int USB_FS_OPEN_STREAM ;
 int USB_FS_START ;
 int USB_FS_STOP ;
 int USB_FS_UNINIT ;
 int USB_GET_CONFIG ;
 int USB_GET_DEVICEINFO ;
 int USB_GET_DEVICE_DESC ;
 int USB_GET_DEV_PORT_PATH ;
 int USB_GET_FULL_DESC ;
 int USB_GET_IFACE_DRIVER ;
 int USB_GET_PLUGTIME ;
 int USB_GET_POWER_MODE ;
 int USB_GET_POWER_USAGE ;
 int USB_GET_REPORT_DESC ;
 int USB_GET_REPORT_ID ;
 int USB_GET_TEMPLATE ;
 int USB_IFACE_DRIVER_ACTIVE ;
 int USB_IFACE_DRIVER_DETACH ;
 int USB_QUIRK_NAME_GET ;
 int USB_READ_DIR ;
 int USB_SET_ALTINTERFACE ;
 int USB_SET_CONFIG ;
 int USB_SET_IMMED ;
 int USB_SET_POWER_MODE ;
 int USB_SET_TEMPLATE ;
 int sys_ioctl (struct thread*,struct ioctl_args*) ;

__attribute__((used)) static int
linux_ioctl_fbsd_usb(struct thread *td, struct linux_ioctl_args *args)
{
 int error;

 error = 0;
 switch (args->cmd) {
 case 162:
  args->cmd = USB_DEVICEENUMERATE;
  break;
 case 161:
  args->cmd = USB_DEV_QUIRK_ADD;
  break;
 case 160:
  args->cmd = USB_DEV_QUIRK_GET;
  break;
 case 159:
  args->cmd = USB_DEV_QUIRK_REMOVE;
  break;
 case 158:
  args->cmd = USB_DO_REQUEST;
  break;
 case 157:
  args->cmd = USB_FS_CLEAR_STALL_SYNC;
  break;
 case 156:
  args->cmd = USB_FS_CLOSE;
  break;
 case 155:
  args->cmd = USB_FS_COMPLETE;
  break;
 case 154:
  args->cmd = USB_FS_INIT;
  break;
 case 153:
  args->cmd = USB_FS_OPEN;
  break;
 case 151:
  args->cmd = USB_FS_START;
  break;
 case 150:
  args->cmd = USB_FS_STOP;
  break;
 case 149:
  args->cmd = USB_FS_UNINIT;
  break;
 case 148:
  args->cmd = USB_GET_CONFIG;
  break;
 case 147:
  args->cmd = USB_GET_DEVICEINFO;
  break;
 case 146:
  args->cmd = USB_GET_DEVICE_DESC;
  break;
 case 144:
  args->cmd = USB_GET_FULL_DESC;
  break;
 case 143:
  args->cmd = USB_GET_IFACE_DRIVER;
  break;
 case 142:
  args->cmd = USB_GET_PLUGTIME;
  break;
 case 141:
  args->cmd = USB_GET_POWER_MODE;
  break;
 case 139:
  args->cmd = USB_GET_REPORT_DESC;
  break;
 case 138:
  args->cmd = USB_GET_REPORT_ID;
  break;
 case 137:
  args->cmd = USB_GET_TEMPLATE;
  break;
 case 136:
  args->cmd = USB_IFACE_DRIVER_ACTIVE;
  break;
 case 135:
  args->cmd = USB_IFACE_DRIVER_DETACH;
  break;
 case 134:
  args->cmd = USB_QUIRK_NAME_GET;
  break;
 case 133:
  args->cmd = USB_READ_DIR;
  break;
 case 132:
  args->cmd = USB_SET_ALTINTERFACE;
  break;
 case 131:
  args->cmd = USB_SET_CONFIG;
  break;
 case 130:
  args->cmd = USB_SET_IMMED;
  break;
 case 129:
  args->cmd = USB_SET_POWER_MODE;
  break;
 case 128:
  args->cmd = USB_SET_TEMPLATE;
  break;
 case 152:
  args->cmd = USB_FS_OPEN_STREAM;
  break;
 case 145:
  args->cmd = USB_GET_DEV_PORT_PATH;
  break;
 case 140:
  args->cmd = USB_GET_POWER_USAGE;
  break;
 default:
  error = ENOIOCTL;
 }
 if (error != ENOIOCTL)
  error = sys_ioctl(td, (struct ioctl_args *)args);
 return (error);
}
