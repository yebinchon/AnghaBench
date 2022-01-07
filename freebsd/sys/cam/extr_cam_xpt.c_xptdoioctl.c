
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {char* periph_name; int index; int unit_number; void* status; int generation; } ;
struct TYPE_14__ {int priority; } ;
struct TYPE_15__ {int flags; void* status; int target_lun; int target_id; int path_id; int func_code; struct cam_path* path; TYPE_6__ pinfo; } ;
struct TYPE_13__ {int * bio; } ;
union ccb {TYPE_4__ cgdl; TYPE_7__ ccb_h; TYPE_5__ csio; } ;
typedef int u_long ;
typedef int u_int ;
struct thread {int dummy; } ;
struct periph_driver {int units; int driver_name; } ;
struct cdev {int dummy; } ;
struct cam_periph_map_info {int dummy; } ;
struct cam_periph {TYPE_3__* path; int unit_number; int periph_name; } ;
struct cam_path {int dummy; } ;
struct cam_ed {int lun_id; int generation; int periphs; } ;
struct cam_eb {int dummy; } ;
typedef int mapinfo ;
typedef scalar_t__ caddr_t ;
struct TYPE_16__ {struct cam_path* path; } ;
struct TYPE_11__ {struct cam_ed* device; TYPE_2__* target; TYPE_1__* bus; } ;
struct TYPE_10__ {int target_id; } ;
struct TYPE_9__ {int path_id; } ;




 int CAM_DATA_MASK ;
 int CAM_DATA_VADDR ;
 void* CAM_GDEVLIST_ERROR ;
 void* CAM_GDEVLIST_LAST_DEVICE ;
 void* CAM_GDEVLIST_MORE_DEVS ;
 int CAM_LUN_WILDCARD ;
 void* CAM_REQ_CMP ;
 void* CAM_REQ_CMP_ERR ;
 int CAM_TARGET_WILDCARD ;
 int CAM_UNLOCKED ;
 int EINVAL ;
 int ENOENT ;
 int ENOTSUP ;
 int ENOTTY ;
 int MAXPHYS ;
 struct cam_periph* SLIST_FIRST (int *) ;
 struct cam_periph* SLIST_NEXT (struct cam_periph*,int ) ;
 struct cam_periph* TAILQ_FIRST (int *) ;
 struct cam_periph* TAILQ_NEXT (struct cam_periph*,int ) ;
 int XPT_SCSI_IO ;
 int bcopy (union ccb*,union ccb*,int) ;
 int bzero (struct cam_periph_map_info*,int) ;
 int cam_periph_mapmem (union ccb*,struct cam_periph_map_info*,int ) ;
 int cam_periph_runccb (union ccb*,int *,int ,int ,int *) ;
 int cam_periph_unmapmem (union ccb*,struct cam_periph_map_info*) ;
 struct periph_driver** periph_drivers ;
 int periph_links ;
 int printf (char*) ;
 int strcmp (int ,char*) ;
 int strlcpy (char*,int ,int) ;
 int unit_links ;
 int xpt_action (union ccb*) ;
 union ccb* xpt_alloc_ccb () ;
 void* xpt_create_path (struct cam_path**,int *,int ,int ,int ) ;
 struct cam_eb* xpt_find_bus (int ) ;
 int xpt_free_ccb (union ccb*) ;
 int xpt_free_path (struct cam_path*) ;
 int xpt_lock_buses () ;
 int xpt_merge_ccb (union ccb*,union ccb*) ;
 int xpt_path_lock (struct cam_path*) ;
 int xpt_path_unlock (struct cam_path*) ;
 TYPE_8__* xpt_periph ;
 int xpt_release_bus (struct cam_eb*) ;
 int xpt_setup_ccb (TYPE_7__*,struct cam_path*,int ) ;
 int xpt_unlock_buses () ;

__attribute__((used)) static int
xptdoioctl(struct cdev *dev, u_long cmd, caddr_t addr, int flag, struct thread *td)
{
 int error;

 error = 0;

 switch(cmd) {






 case 136: {
  union ccb *ccb;
  union ccb *inccb;
  struct cam_eb *bus;

  inccb = (union ccb *)addr;





  if (inccb->ccb_h.flags & CAM_UNLOCKED)
   return (EINVAL);

  bus = xpt_find_bus(inccb->ccb_h.path_id);
  if (bus == ((void*)0))
   return (EINVAL);

  switch (inccb->ccb_h.func_code) {
  case 130:
  case 131:
   if (inccb->ccb_h.target_id != CAM_TARGET_WILDCARD ||
       inccb->ccb_h.target_lun != CAM_LUN_WILDCARD) {
    xpt_release_bus(bus);
    return (EINVAL);
   }
   break;
  case 128:
   if (inccb->ccb_h.target_id == CAM_TARGET_WILDCARD ||
       inccb->ccb_h.target_lun != CAM_LUN_WILDCARD) {
    xpt_release_bus(bus);
    return (EINVAL);
   }
   break;
  default:
   break;
  }

  switch(inccb->ccb_h.func_code) {
  case 130:
  case 131:
  case 132:
  case 133:
  case 129:
  case 128:

   ccb = xpt_alloc_ccb();





   if (xpt_create_path(&ccb->ccb_h.path, ((void*)0),
         inccb->ccb_h.path_id,
         inccb->ccb_h.target_id,
         inccb->ccb_h.target_lun) !=
         CAM_REQ_CMP){
    error = EINVAL;
    xpt_free_ccb(ccb);
    break;
   }

   xpt_setup_ccb(&ccb->ccb_h, ccb->ccb_h.path,
          inccb->ccb_h.pinfo.priority);
   xpt_merge_ccb(ccb, inccb);
   xpt_path_lock(ccb->ccb_h.path);
   cam_periph_runccb(ccb, ((void*)0), 0, 0, ((void*)0));
   xpt_path_unlock(ccb->ccb_h.path);
   bcopy(ccb, inccb, sizeof(union ccb));
   xpt_free_path(ccb->ccb_h.path);
   xpt_free_ccb(ccb);
   break;

  case 135: {
   union ccb ccb;
   if (xpt_create_path(&ccb.ccb_h.path, ((void*)0),
         inccb->ccb_h.path_id,
         inccb->ccb_h.target_id,
         inccb->ccb_h.target_lun) !=
         CAM_REQ_CMP){
    error = EINVAL;
    break;
   }

   xpt_setup_ccb(&ccb.ccb_h, ccb.ccb_h.path,
          inccb->ccb_h.pinfo.priority);
   xpt_merge_ccb(&ccb, inccb);
   xpt_action(&ccb);
   bcopy(&ccb, inccb, sizeof(union ccb));
   xpt_free_path(ccb.ccb_h.path);
   break;

  }
  case 134: {
   struct cam_periph_map_info mapinfo;
   struct cam_path *old_path;





   if ((inccb->ccb_h.flags & CAM_DATA_MASK) !=
       CAM_DATA_VADDR) {
    error = EINVAL;
    break;
   }





   old_path = inccb->ccb_h.path;







   inccb->ccb_h.path = xpt_periph->path;

   bzero(&mapinfo, sizeof(mapinfo));





   error = cam_periph_mapmem(inccb, &mapinfo, MAXPHYS);

   if (error) {
    inccb->ccb_h.path = old_path;
    break;
   }




   xpt_action(inccb);




   cam_periph_unmapmem(inccb, &mapinfo);

   inccb->ccb_h.path = old_path;

   error = 0;
   break;
  }
  default:
   error = ENOTSUP;
   break;
  }
  xpt_release_bus(bus);
  break;
 }
 case 137: {
  union ccb *ccb;
  struct cam_periph *periph;
  struct periph_driver **p_drv;
  char *name;
  u_int unit;
  int base_periph_found;

  ccb = (union ccb *)addr;
  unit = ccb->cgdl.unit_number;
  name = ccb->cgdl.periph_name;
  base_periph_found = 0;
  if (*ccb->cgdl.periph_name == '\0') {
   error = EINVAL;
   break;
  }


  xpt_lock_buses();


  for (p_drv = periph_drivers; *p_drv != ((void*)0); p_drv++)
   if (strcmp((*p_drv)->driver_name, name) == 0)
    break;

  if (*p_drv == ((void*)0)) {
   xpt_unlock_buses();
   ccb->ccb_h.status = CAM_REQ_CMP_ERR;
   ccb->cgdl.status = CAM_GDEVLIST_ERROR;
   *ccb->cgdl.periph_name = '\0';
   ccb->cgdl.unit_number = 0;
   error = ENOENT;
   break;
  }
  for (periph = TAILQ_FIRST(&(*p_drv)->units); periph != ((void*)0);
       periph = TAILQ_NEXT(periph, unit_links)) {

   if (periph->unit_number == unit)
    break;
  }





  if (periph != ((void*)0)) {
   struct cam_ed *device;
   int i;

   base_periph_found = 1;
   device = periph->path->device;
   for (i = 0, periph = SLIST_FIRST(&device->periphs);
        periph != ((void*)0);
        periph = SLIST_NEXT(periph, periph_links), i++) {




    if (strcmp(periph->periph_name, "pass") == 0) {



     strlcpy(ccb->cgdl.periph_name,
            periph->periph_name,
            sizeof(ccb->cgdl.periph_name));
     ccb->cgdl.unit_number =
      periph->unit_number;
     if (SLIST_NEXT(periph, periph_links))
      ccb->cgdl.status =
       CAM_GDEVLIST_MORE_DEVS;
     else
      ccb->cgdl.status =
             CAM_GDEVLIST_LAST_DEVICE;
     ccb->cgdl.generation =
      device->generation;
     ccb->cgdl.index = i;




     ccb->ccb_h.path_id =
      periph->path->bus->path_id;
     ccb->ccb_h.target_id =
      periph->path->target->target_id;
     ccb->ccb_h.target_lun =
      periph->path->device->lun_id;
     ccb->ccb_h.status = CAM_REQ_CMP;
     break;
    }
   }
  }
  if (periph == ((void*)0)) {
   ccb->ccb_h.status = CAM_REQ_CMP_ERR;
   ccb->cgdl.status = CAM_GDEVLIST_ERROR;
   *ccb->cgdl.periph_name = '\0';
   ccb->cgdl.unit_number = 0;
   error = ENOENT;







   if (base_periph_found == 1) {
    printf("xptioctl: pass driver is not in the "
           "kernel\n");
    printf("xptioctl: put \"device pass\" in "
           "your kernel config file\n");
   }
  }
  xpt_unlock_buses();
  break;
  }
 default:
  error = ENOTTY;
  break;
 }

 return(error);
}
