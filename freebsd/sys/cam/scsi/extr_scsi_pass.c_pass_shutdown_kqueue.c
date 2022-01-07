
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct pass_softc {TYPE_1__ read_select; } ;
struct cam_periph {struct pass_softc* softc; } ;


 int cam_periph_release (struct cam_periph*) ;
 int knlist_clear (int *,int ) ;
 int knlist_destroy (int *) ;

__attribute__((used)) static void
pass_shutdown_kqueue(void *context, int pending)
{
 struct cam_periph *periph;
 struct pass_softc *softc;

 periph = context;
 softc = periph->softc;

 knlist_clear(&softc->read_select.si_note, 0);
 knlist_destroy(&softc->read_select.si_note);




 cam_periph_release(periph);
}
