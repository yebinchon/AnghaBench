
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;
struct cam_periph {int dummy; } ;


 int MA_NOTOWNED ;
 int cam_periph_assert (struct cam_periph*,int ) ;
 struct mtx* cam_periph_mtx (struct cam_periph*) ;
 int cam_periph_release_locked (struct cam_periph*) ;
 int mtx_lock (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;

void
cam_periph_release(struct cam_periph *periph)
{
 struct mtx *mtx;

 if (periph == ((void*)0))
  return;

 cam_periph_assert(periph, MA_NOTOWNED);
 mtx = cam_periph_mtx(periph);
 mtx_lock(mtx);
 cam_periph_release_locked(periph);
 mtx_unlock(mtx);
}
