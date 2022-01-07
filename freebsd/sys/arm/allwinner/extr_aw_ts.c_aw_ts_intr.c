
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aw_ts_softc {int temp_data; int temp_step; int temp_offset; } ;


 int READ (struct aw_ts_softc*,int ) ;
 int TEMP_DATA ;
 int TP_FIFOS ;
 int TP_FIFOS_TEMP_IRQ_PENDING ;
 int WRITE (struct aw_ts_softc*,int ,int) ;

__attribute__((used)) static void
aw_ts_intr(void *arg)
{
 struct aw_ts_softc *sc;
 int val;

 sc= (struct aw_ts_softc *)arg;

 val = READ(sc, TP_FIFOS);
 if (val & TP_FIFOS_TEMP_IRQ_PENDING) {

  sc->temp_data = (READ(sc, TEMP_DATA) * sc->temp_step - sc->temp_offset)
   + 273150;
 }

 WRITE(sc, TP_FIFOS, val);
}
