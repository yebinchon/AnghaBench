
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_long ;
struct armada_thermal_softc {int stat_res; TYPE_1__* tdata; } ;
struct TYPE_2__ {int temp_shift; int temp_mask; int coef_b; int coef_m; int coef_div; scalar_t__ inverted; int (* is_valid ) (struct armada_thermal_softc*) ;} ;
typedef TYPE_1__ armada_tdata_t ;


 int EIO ;
 int READOUT_TO_C (int) ;
 int bus_read_4 (int ,int ) ;
 int stub1 (struct armada_thermal_softc*) ;

__attribute__((used)) static int
armada_tsen_get_temp(struct armada_thermal_softc *sc, u_long *temp)
{
 const armada_tdata_t *tdata;
 uint32_t reg;
 u_long tmp;
 u_long m, b, div;

 tdata = sc->tdata;

 if ((tdata->is_valid != ((void*)0)) && !tdata->is_valid(sc))
  return (EIO);

 reg = bus_read_4(sc->stat_res, 0);
 reg = (reg >> tdata->temp_shift) & tdata->temp_mask;


 b = tdata->coef_b;
 m = tdata->coef_m;
 div = tdata->coef_div;

 if (tdata->inverted)
  tmp = ((m * reg) - b) / div;
 else
  tmp = (b - (m * reg)) / div;

 *temp = READOUT_TO_C(tmp);

 return (0);
}
