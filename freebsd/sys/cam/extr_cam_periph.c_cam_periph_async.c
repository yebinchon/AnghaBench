
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct cam_periph {int dummy; } ;
struct cam_path {int dummy; } ;



 int cam_periph_invalidate (struct cam_periph*) ;

void
cam_periph_async(struct cam_periph *periph, u_int32_t code,
   struct cam_path *path, void *arg)
{
 switch (code) {
 case 128:
  cam_periph_invalidate(periph);
  break;
 default:
  break;
 }
}
