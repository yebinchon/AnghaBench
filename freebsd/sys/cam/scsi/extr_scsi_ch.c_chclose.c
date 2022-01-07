
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct mtx {int dummy; } ;
struct ch_softc {int open_count; } ;
struct cdev {scalar_t__ si_drv1; } ;
struct cam_periph {scalar_t__ softc; } ;


 struct mtx* cam_periph_mtx (struct cam_periph*) ;
 int cam_periph_release_locked (struct cam_periph*) ;
 int mtx_lock (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;

__attribute__((used)) static int
chclose(struct cdev *dev, int flag, int fmt, struct thread *td)
{
 struct cam_periph *periph;
 struct ch_softc *softc;
 struct mtx *mtx;

 periph = (struct cam_periph *)dev->si_drv1;
 mtx = cam_periph_mtx(periph);
 mtx_lock(mtx);

 softc = (struct ch_softc *)periph->softc;
 softc->open_count--;

 cam_periph_release_locked(periph);
 mtx_unlock(mtx);

 return(0);
}
