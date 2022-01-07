
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct mv_ap806_sei_softc {int dummy; } ;
struct mv_ap806_sei_irqsrc {int dummy; } ;
struct intr_map_data {int dummy; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 struct mv_ap806_sei_softc* device_get_softc (int ) ;
 int mv_ap806_sei_isrc_mask (struct mv_ap806_sei_softc*,struct mv_ap806_sei_irqsrc*,int) ;

__attribute__((used)) static int
mv_ap806_sei_teardown_intr(device_t dev, struct intr_irqsrc *isrc,
    struct resource *res, struct intr_map_data *data)
{
 struct mv_ap806_sei_softc *sc;
 struct mv_ap806_sei_irqsrc *sisrc;

 sc = device_get_softc(dev);
 sisrc = (struct mv_ap806_sei_irqsrc *)isrc;

 mv_ap806_sei_isrc_mask(sc, sisrc, 1);
 return (0);
}
