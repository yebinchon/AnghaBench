
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;
struct enc_softc {int open_count; } ;
struct cam_periph {scalar_t__ softc; } ;


 struct mtx* cam_periph_mtx (struct cam_periph*) ;
 int cam_periph_release_locked (struct cam_periph*) ;
 int mtx_lock (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;

__attribute__((used)) static void
enc_devgonecb(void *arg)
{
 struct cam_periph *periph;
 struct enc_softc *enc;
 struct mtx *mtx;
 int i;

 periph = (struct cam_periph *)arg;
 mtx = cam_periph_mtx(periph);
 mtx_lock(mtx);
 enc = (struct enc_softc *)periph->softc;






 for (i = 0; i < enc->open_count; i++)
  cam_periph_release_locked(periph);

 enc->open_count = 0;




 cam_periph_release_locked(periph);
 mtx_unlock(mtx);
}
