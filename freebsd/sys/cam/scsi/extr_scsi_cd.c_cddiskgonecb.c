
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disk {scalar_t__ d_drv1; } ;
struct cam_periph {int dummy; } ;


 int cam_periph_release (struct cam_periph*) ;

__attribute__((used)) static void
cddiskgonecb(struct disk *dp)
{
 struct cam_periph *periph;

 periph = (struct cam_periph *)dp->d_drv1;
 cam_periph_release(periph);
}
