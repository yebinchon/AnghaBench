
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct its_cmd {int dummy; } ;
struct gicv3_its_softc {int dummy; } ;
typedef int device_t ;


 int DELAY (int) ;
 int GITS_CREADR ;
 struct gicv3_its_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ gic_its_read_8 (struct gicv3_its_softc*,int ) ;
 scalar_t__ its_cmd_cwriter_offset (struct gicv3_its_softc*,struct its_cmd*) ;

__attribute__((used)) static void
its_cmd_wait_completion(device_t dev, struct its_cmd *cmd_first,
    struct its_cmd *cmd_last)
{
 struct gicv3_its_softc *sc;
 uint64_t first, last, read;
 size_t us_left;

 sc = device_get_softc(dev);






 us_left = 1000000;

 first = its_cmd_cwriter_offset(sc, cmd_first);
 last = its_cmd_cwriter_offset(sc, cmd_last);

 for (;;) {
  read = gic_its_read_8(sc, GITS_CREADR);
  if (first < last) {
   if (read < first || read >= last)
    break;
  } else if (read < first && read >= last)
   break;

  if (us_left-- == 0) {

   device_printf(dev,
       "Timeout while waiting for CMD completion.\n");
   return;
  }
  DELAY(1);
 }
}
