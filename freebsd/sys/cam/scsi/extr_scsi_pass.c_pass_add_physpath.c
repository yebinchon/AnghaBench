
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pass_softc {int flags; int alias_dev; int dev; } ;
struct mtx {int dummy; } ;
struct cam_periph {int flags; int path; struct pass_softc* softc; } ;


 int CAM_PERIPH_INVALID ;
 int MAKEDEV_WAITOK ;
 int MAXPATHLEN ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int PASS_FLAG_INITIAL_PHYSPATH ;
 struct mtx* cam_periph_mtx (struct cam_periph*) ;
 int cam_periph_release_locked (struct cam_periph*) ;
 int free (char*,int ) ;
 int make_dev_physpath_alias (int ,int *,int ,int ,char*) ;
 char* malloc (int ,int ,int ) ;
 int mtx_lock (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ xpt_getattr (char*,int ,char*,int ) ;

__attribute__((used)) static void
pass_add_physpath(void *context, int pending)
{
 struct cam_periph *periph;
 struct pass_softc *softc;
 struct mtx *mtx;
 char *physpath;





 periph = context;
 softc = periph->softc;
 physpath = malloc(MAXPATHLEN, M_DEVBUF, M_WAITOK);
 mtx = cam_periph_mtx(periph);
 mtx_lock(mtx);

 if (periph->flags & CAM_PERIPH_INVALID)
  goto out;

 if (xpt_getattr(physpath, MAXPATHLEN,
   "GEOM::physpath", periph->path) == 0
  && strlen(physpath) != 0) {

  mtx_unlock(mtx);
  make_dev_physpath_alias(MAKEDEV_WAITOK, &softc->alias_dev,
     softc->dev, softc->alias_dev, physpath);
  mtx_lock(mtx);
 }

out:




 if ((softc->flags & PASS_FLAG_INITIAL_PHYSPATH) == 0)
  softc->flags |= PASS_FLAG_INITIAL_PHYSPATH;





 while (pending-- > 0)
  cam_periph_release_locked(periph);
 mtx_unlock(mtx);

 free(physpath, M_DEVBUF);
}
