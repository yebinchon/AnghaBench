
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* desc_ring; } ;
struct awg_softc {TYPE_2__ rx; } ;
struct TYPE_3__ {int status; } ;


 int RX_DESC_CTL ;
 int htole32 (int ) ;

__attribute__((used)) static void
awg_reuse_rxdesc(struct awg_softc *sc, int index)
{

 sc->rx.desc_ring[index].status = htole32(RX_DESC_CTL);
}
