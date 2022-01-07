
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_softc {int device_stats; } ;
struct cam_periph {scalar_t__ softc; } ;


 int M_DEVBUF ;
 int devstat_remove_entry (int ) ;
 int free (struct sg_softc*,int ) ;

__attribute__((used)) static void
sgcleanup(struct cam_periph *periph)
{
 struct sg_softc *softc;

 softc = (struct sg_softc *)periph->softc;

 devstat_remove_entry(softc->device_stats);

 free(softc, M_DEVBUF);
}
