
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bio {TYPE_1__* bio_disk; } ;
struct aac_softc {int dummy; } ;
struct aac_disk {struct aac_softc* ad_controller; } ;
struct TYPE_2__ {scalar_t__ d_drv1; } ;


 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int aac_enqueue_bio (struct aac_softc*,struct bio*) ;
 int aac_startio (struct aac_softc*) ;
 int fwprintf (struct aac_softc*,char*,char*) ;

void
aac_submit_bio(struct bio *bp)
{
 struct aac_disk *ad;
 struct aac_softc *sc;

 ad = (struct aac_disk *)bp->bio_disk->d_drv1;
 sc = ad->ad_controller;
 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");


 aac_enqueue_bio(sc, bp);
 aac_startio(sc);
}
