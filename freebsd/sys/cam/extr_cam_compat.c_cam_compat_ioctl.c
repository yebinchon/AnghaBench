
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct ccb_hdr_0x17 {int flags; } ;
typedef int d_ioctl_t ;
typedef scalar_t__ caddr_t ;


 int CAMGETPASSTHRU ;



 int CAMIOCOMMAND ;



 int CAM_DATA_PADDR ;
 int CAM_DATA_PHYS_0x16 ;
 int CAM_DATA_SG ;
 int CAM_DATA_SG_PADDR ;
 int CAM_SCATTER_VALID_0x16 ;
 int CAM_SG_LIST_PHYS_0x16 ;
 int ENOTTY ;
 int cam_compat_handle_0x17 (struct cdev*,int,scalar_t__,int,struct thread*,int *) ;
 int cam_compat_handle_0x18 (struct cdev*,int,scalar_t__,int,struct thread*,int *) ;

int
cam_compat_ioctl(struct cdev *dev, u_long cmd, caddr_t addr, int flag,
    struct thread *td, d_ioctl_t *cbfnp)
{
 int error;

 switch (cmd) {
 case 130:
 {
  struct ccb_hdr_0x17 *hdr17;

  hdr17 = (struct ccb_hdr_0x17 *)addr;
  if (hdr17->flags & CAM_SG_LIST_PHYS_0x16) {
   hdr17->flags &= ~CAM_SG_LIST_PHYS_0x16;
   hdr17->flags |= CAM_DATA_SG_PADDR;
  }
  if (hdr17->flags & CAM_DATA_PHYS_0x16) {
   hdr17->flags &= ~CAM_DATA_PHYS_0x16;
   hdr17->flags |= CAM_DATA_PADDR;
  }
  if (hdr17->flags & CAM_SCATTER_VALID_0x16) {
   hdr17->flags &= CAM_SCATTER_VALID_0x16;
   hdr17->flags |= CAM_DATA_SG;
  }
  cmd = CAMIOCOMMAND;
  error = cam_compat_handle_0x17(dev, cmd, addr, flag, td, cbfnp);
  break;
 }
 case 133:
  cmd = CAMGETPASSTHRU;
  error = cam_compat_handle_0x17(dev, cmd, addr, flag, td, cbfnp);
  break;
 case 129:
  cmd = CAMIOCOMMAND;
  error = cam_compat_handle_0x17(dev, cmd, addr, flag, td, cbfnp);
  break;
 case 132:
  cmd = CAMGETPASSTHRU;
  error = cam_compat_handle_0x17(dev, cmd, addr, flag, td, cbfnp);
  break;
 case 128:
  cmd = CAMIOCOMMAND;
  error = cam_compat_handle_0x18(dev, cmd, addr, flag, td, cbfnp);
  break;
 case 131:
  cmd = CAMGETPASSTHRU;
  error = cam_compat_handle_0x18(dev, cmd, addr, flag, td, cbfnp);
  break;
 default:
  error = ENOTTY;
 }

 return (error);
}
