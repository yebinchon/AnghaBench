
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cd_softc {int flags; int disk; int mediapoll_c; int sysctl_ctx; } ;
struct cam_periph {int path; scalar_t__ softc; } ;


 int CD_FLAG_SCTX_INIT ;
 int M_DEVBUF ;
 int callout_drain (int *) ;
 int cam_periph_lock (struct cam_periph*) ;
 int cam_periph_unlock (struct cam_periph*) ;
 int disk_destroy (int ) ;
 int free (struct cd_softc*,int ) ;
 scalar_t__ sysctl_ctx_free (int *) ;
 int xpt_print (int ,char*) ;

__attribute__((used)) static void
cdcleanup(struct cam_periph *periph)
{
 struct cd_softc *softc;

 softc = (struct cd_softc *)periph->softc;

 cam_periph_unlock(periph);
 if ((softc->flags & CD_FLAG_SCTX_INIT) != 0
     && sysctl_ctx_free(&softc->sysctl_ctx) != 0) {
  xpt_print(periph->path, "can't remove sysctl context\n");
 }

 callout_drain(&softc->mediapoll_c);
 disk_destroy(softc->disk);
 free(softc, M_DEVBUF);
 cam_periph_lock(periph);
}
