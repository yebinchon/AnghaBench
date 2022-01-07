
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_softc {int open_count; } ;
struct mtx {int dummy; } ;
struct cam_periph {scalar_t__ softc; } ;


 int KASSERT (int,char*) ;
 struct mtx* cam_periph_mtx (struct cam_periph*) ;
 int cam_periph_release_locked (struct cam_periph*) ;
 int mtx_lock (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;

__attribute__((used)) static void
sgdevgonecb(void *arg)
{
 struct cam_periph *periph;
 struct sg_softc *softc;
 struct mtx *mtx;
 int i;

 periph = (struct cam_periph *)arg;
 mtx = cam_periph_mtx(periph);
 mtx_lock(mtx);

 softc = (struct sg_softc *)periph->softc;
 KASSERT(softc->open_count >= 0, ("Negative open count %d",
  softc->open_count));






 for (i = 0; i < softc->open_count; i++)
  cam_periph_release_locked(periph);

 softc->open_count = 0;




 cam_periph_release_locked(periph);
 mtx_unlock(mtx);
}
