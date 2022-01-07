
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct pass_softc {int add_physpath_task; } ;
struct ccb_getdev {int dummy; } ;
struct cam_status_entry {char* status_text; } ;
struct cam_periph {scalar_t__ softc; } ;
struct cam_path {int dummy; } ;
typedef int cam_status ;




 int CAM_PERIPH_BIO ;
 int CAM_REQ_CMP ;
 int CAM_REQ_INPROG ;
 uintptr_t CDAI_TYPE_PHYS_PATH ;
 struct cam_status_entry* cam_fetch_status_entry (int) ;
 int cam_periph_acquire (struct cam_periph*) ;
 int cam_periph_alloc (int ,int ,int ,int ,char*,int ,struct cam_path*,void (*) (void*,int,struct cam_path*,void*),int const,struct ccb_getdev*) ;
 int cam_periph_async (struct cam_periph*,int,struct cam_path*,void*) ;
 int passcleanup ;
 int passoninvalidate ;
 int passregister ;
 int passstart ;
 int printf (char*,int,char*) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;

__attribute__((used)) static void
passasync(void *callback_arg, u_int32_t code,
   struct cam_path *path, void *arg)
{
 struct cam_periph *periph;

 periph = (struct cam_periph *)callback_arg;

 switch (code) {
 case 128:
 {
  struct ccb_getdev *cgd;
  cam_status status;

  cgd = (struct ccb_getdev *)arg;
  if (cgd == ((void*)0))
   break;






  status = cam_periph_alloc(passregister, passoninvalidate,
       passcleanup, passstart, "pass",
       CAM_PERIPH_BIO, path,
       passasync, 128, cgd);

  if (status != CAM_REQ_CMP
   && status != CAM_REQ_INPROG) {
   const struct cam_status_entry *entry;

   entry = cam_fetch_status_entry(status);

   printf("passasync: Unable to attach new device "
          "due to status %#x: %s\n", status, entry ?
          entry->status_text : "Unknown");
  }

  break;
 }
 case 129:
 {
  uintptr_t buftype;

  buftype = (uintptr_t)arg;
  if (buftype == CDAI_TYPE_PHYS_PATH) {
   struct pass_softc *softc;

   softc = (struct pass_softc *)periph->softc;






   if (cam_periph_acquire(periph) != 0)
    break;

   taskqueue_enqueue(taskqueue_thread,
       &softc->add_physpath_task);
  }
  break;
 }
 default:
  cam_periph_async(periph, code, path, arg);
  break;
 }
}
