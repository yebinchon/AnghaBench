
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_2__ {int path_id; } ;
struct ccb_pathinq {int target_sprt; TYPE_1__ ccb_h; } ;
struct cam_periph {int dummy; } ;
struct cam_path {int dummy; } ;
typedef int path_id_t ;
typedef scalar_t__ cam_status ;




 int CAM_LUN_WILDCARD ;
 int CAM_PERIPH_BIO ;
 scalar_t__ CAM_REQ_CMP ;
 int CAM_TARGET_WILDCARD ;
 int PIT_PROCESSOR ;
 scalar_t__ cam_periph_alloc (int ,int *,int ,int ,char*,int ,struct cam_path*,void (*) (void*,int,struct cam_path*,void*),int const,struct ccb_pathinq*) ;
 struct cam_periph* cam_periph_find (struct cam_path*,char*) ;
 int cam_periph_invalidate (struct cam_periph*) ;
 int printf (char*,scalar_t__) ;
 int targbhctor ;
 int targbhdtor ;
 int targbhstart ;
 scalar_t__ xpt_create_path (struct cam_path**,int *,int ,int ,int ) ;
 int xpt_free_path (struct cam_path*) ;
 int xpt_path_path_id (struct cam_path*) ;

__attribute__((used)) static void
targbhasync(void *callback_arg, u_int32_t code,
     struct cam_path *path, void *arg)
{
 struct cam_path *new_path;
 struct ccb_pathinq *cpi;
 path_id_t bus_path_id;
 cam_status status;

 cpi = (struct ccb_pathinq *)arg;
 if (code == 128)
  bus_path_id = cpi->ccb_h.path_id;
 else
  bus_path_id = xpt_path_path_id(path);




 status = xpt_create_path(&new_path, ((void*)0),
     bus_path_id,
     CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD);
 if (status != CAM_REQ_CMP) {
  printf("targbhasync: Unable to create path "
   "due to status 0x%x\n", status);
  return;
 }

 switch (code) {
 case 128:
 {

  if ((cpi->target_sprt & PIT_PROCESSOR) == 0)
   break;

  status = cam_periph_alloc(targbhctor, ((void*)0), targbhdtor,
       targbhstart,
       "targbh", CAM_PERIPH_BIO,
       new_path, targbhasync,
       128,
       cpi);
  break;
 }
 case 129:
 {
  struct cam_periph *periph;

  if ((periph = cam_periph_find(new_path, "targbh")) != ((void*)0))
   cam_periph_invalidate(periph);
  break;
 }
 default:
  break;
 }
 xpt_free_path(new_path);
}
