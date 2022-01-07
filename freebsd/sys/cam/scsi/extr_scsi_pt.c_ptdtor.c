
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_softc {int dev; int device_stats; } ;
struct cam_periph {scalar_t__ softc; } ;


 int M_DEVBUF ;
 int cam_periph_lock (struct cam_periph*) ;
 int cam_periph_unlock (struct cam_periph*) ;
 int destroy_dev (int ) ;
 int devstat_remove_entry (int ) ;
 int free (struct pt_softc*,int ) ;

__attribute__((used)) static void
ptdtor(struct cam_periph *periph)
{
 struct pt_softc *softc;

 softc = (struct pt_softc *)periph->softc;

 devstat_remove_entry(softc->device_stats);
 cam_periph_unlock(periph);
 destroy_dev(softc->dev);
 cam_periph_lock(periph);
 free(softc, M_DEVBUF);
}
