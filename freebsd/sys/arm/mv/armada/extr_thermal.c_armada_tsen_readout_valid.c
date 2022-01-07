
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct armada_thermal_softc {int stat_res; TYPE_1__* tdata; } ;
typedef int boolean_t ;
struct TYPE_2__ {int is_valid_shift; } ;
typedef TYPE_1__ armada_tdata_t ;


 int TSEN_STAT_READOUT_VALID ;
 int bus_read_4 (int ,int ) ;

__attribute__((used)) static boolean_t
armada_tsen_readout_valid(struct armada_thermal_softc *sc)
{
 const armada_tdata_t *tdata;
 uint32_t tsen_stat;
 boolean_t is_valid;

 tdata = sc->tdata;
 tsen_stat = bus_read_4(sc->stat_res, 0);

 tsen_stat >>= tdata->is_valid_shift;
 is_valid = ((tsen_stat & TSEN_STAT_READOUT_VALID) != 0);

 return (is_valid);
}
