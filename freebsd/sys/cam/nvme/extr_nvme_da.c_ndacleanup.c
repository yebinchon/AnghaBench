
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nda_softc {int flags; int disk; int sysctl_ctx; int sysctl_stats_ctx; int cam_iosched; } ;
struct cam_periph {int path; scalar_t__ softc; } ;


 int M_DEVBUF ;
 int NDA_FLAG_SCTX_INIT ;
 int cam_iosched_fini (int ) ;
 int cam_periph_lock (struct cam_periph*) ;
 int cam_periph_unlock (struct cam_periph*) ;
 int disk_destroy (int ) ;
 int free (struct nda_softc*,int ) ;
 scalar_t__ sysctl_ctx_free (int *) ;
 int xpt_print (int ,char*) ;

__attribute__((used)) static void
ndacleanup(struct cam_periph *periph)
{
 struct nda_softc *softc;

 softc = (struct nda_softc *)periph->softc;

 cam_periph_unlock(periph);

 cam_iosched_fini(softc->cam_iosched);




 if ((softc->flags & NDA_FLAG_SCTX_INIT) != 0) {





  if (sysctl_ctx_free(&softc->sysctl_ctx) != 0)
   xpt_print(periph->path,
       "can't remove sysctl context\n");
 }

 disk_destroy(softc->disk);
 free(softc, M_DEVBUF);
 cam_periph_lock(periph);
}
