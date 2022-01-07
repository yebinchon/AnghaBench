
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int func_code; } ;
union ccb {int cpi; TYPE_1__ ccb_h; } ;
struct periph_driver {int generation; int units; int driver_name; } ;
struct cam_periph {scalar_t__ periph_allocating; int flags; int deferred_ac; int path; int (* deferred_callback ) (int *,int,int ,void*) ;int (* periph_dtor ) (struct cam_periph*) ;int periph_name; int unit_number; } ;




 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_INFO ;
 int CAM_PERIPH_ANNOUNCED ;
 int CAM_PERIPH_FREE ;
 int CAM_PERIPH_NEW_DEV_FOUND ;
 int CAM_PRIORITY_NORMAL ;
 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int M_CAMPERIPH ;
 int TAILQ_REMOVE (int *,struct cam_periph*,int ) ;
 int XPT_GDEV_TYPE ;
 int cam_periph_assert (struct cam_periph*,int ) ;
 int free (struct cam_periph*,int ) ;
 struct periph_driver** periph_drivers ;
 int printf (char*) ;
 int rebooting ;
 scalar_t__ strcmp (int ,int ) ;
 int stub1 (struct cam_periph*) ;
 int stub2 (int *,int,int ,void*) ;
 int unit_links ;
 int xpt_action (union ccb*) ;
 int xpt_free_path (int ) ;
 int xpt_lock_buses () ;
 int xpt_path_inq (int *,int ) ;
 int xpt_print (int ,char*) ;
 int xpt_remove_periph (struct cam_periph*) ;
 int xpt_setup_ccb (TYPE_1__*,int ,int ) ;
 int xpt_unlock_buses () ;

__attribute__((used)) static void
camperiphfree(struct cam_periph *periph)
{
 struct periph_driver **p_drv;
 struct periph_driver *drv;

 cam_periph_assert(periph, MA_OWNED);
 KASSERT(periph->periph_allocating == 0, ("%s%d: freed while allocating",
     periph->periph_name, periph->unit_number));
 for (p_drv = periph_drivers; *p_drv != ((void*)0); p_drv++) {
  if (strcmp((*p_drv)->driver_name, periph->periph_name) == 0)
   break;
 }
 if (*p_drv == ((void*)0)) {
  printf("camperiphfree: attempt to free non-existant periph\n");
  return;
 }
 drv = *p_drv;







 periph->flags |= CAM_PERIPH_FREE;






 xpt_unlock_buses();
 if (periph->periph_dtor != ((void*)0))
  periph->periph_dtor(periph);




 xpt_lock_buses();

 TAILQ_REMOVE(&drv->units, periph, unit_links);
 drv->generation++;

 xpt_remove_periph(periph);

 xpt_unlock_buses();
 if ((periph->flags & CAM_PERIPH_ANNOUNCED) && !rebooting)
  xpt_print(periph->path, "Periph destroyed\n");
 else
  CAM_DEBUG(periph->path, CAM_DEBUG_INFO, ("Periph destroyed\n"));

 if (periph->flags & CAM_PERIPH_NEW_DEV_FOUND) {
  union ccb ccb;
  void *arg;

  switch (periph->deferred_ac) {
  case 129:
   ccb.ccb_h.func_code = XPT_GDEV_TYPE;
   xpt_setup_ccb(&ccb.ccb_h, periph->path, CAM_PRIORITY_NORMAL);
   xpt_action(&ccb);
   arg = &ccb;
   break;
  case 128:
   xpt_path_inq(&ccb.cpi, periph->path);
   arg = &ccb;
   break;
  default:
   arg = ((void*)0);
   break;
  }
  periph->deferred_callback(((void*)0), periph->deferred_ac,
       periph->path, arg);
 }
 xpt_free_path(periph->path);
 free(periph, M_CAMPERIPH);
 xpt_lock_buses();
}
