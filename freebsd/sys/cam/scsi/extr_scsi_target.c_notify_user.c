
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct targ_softc {int user_ccb_queue; TYPE_1__ read_select; } ;


 int KNOTE_UNLOCKED (int *,int ) ;
 int PRIBIO ;
 int selwakeuppri (TYPE_1__*,int ) ;
 int wakeup (int *) ;

__attribute__((used)) static void
notify_user(struct targ_softc *softc)
{




 selwakeuppri(&softc->read_select, PRIBIO);
 KNOTE_UNLOCKED(&softc->read_select.si_note, 0);
 wakeup(&softc->user_ccb_queue);
}
