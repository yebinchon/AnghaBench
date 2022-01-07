
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct resource {int dummy; } ;
struct mv_ap806_sei_softc {int dummy; } ;
struct mv_ap806_sei_irqsrc {scalar_t__ irq; } ;
struct intr_map_data {int dummy; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int EINVAL ;
 int ENOTSUP ;
 struct mv_ap806_sei_softc* device_get_softc (int ) ;
 int mv_ap806_sei_isrc_mask (struct mv_ap806_sei_softc*,struct mv_ap806_sei_irqsrc*,int ) ;
 int mv_ap806_sei_map (int ,struct intr_map_data*,scalar_t__*) ;

__attribute__((used)) static int
mv_ap806_sei_setup_intr(device_t dev, struct intr_irqsrc *isrc,
    struct resource *res, struct intr_map_data *data)
{
 struct mv_ap806_sei_softc *sc;
 struct mv_ap806_sei_irqsrc *sisrc;
 u_int irq;
 int rv;

 sc = device_get_softc(dev);
 sisrc = (struct mv_ap806_sei_irqsrc *)isrc;
 if (data == ((void*)0))
  return (ENOTSUP);
 rv = mv_ap806_sei_map(dev, data, &irq);
 if (rv != 0)
  return (rv);
 if (irq != sisrc->irq)
  return (EINVAL);
 mv_ap806_sei_isrc_mask(sc, sisrc, 0);
 return (0);
}
