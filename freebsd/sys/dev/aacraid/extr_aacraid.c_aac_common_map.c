
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct aac_softc {int aac_common_busaddr; } ;
struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;


 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int fwprintf (struct aac_softc*,char*,char*) ;

__attribute__((used)) static void
aac_common_map(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
 struct aac_softc *sc;

 sc = (struct aac_softc *)arg;
 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 sc->aac_common_busaddr = segs[0].ds_addr;
}
