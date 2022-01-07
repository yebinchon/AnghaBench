
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct mv_ap806_gicp_softc {int parent; } ;
struct intr_map_data {int dummy; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int EINVAL ;
 int PIC_SETUP_INTR (int ,struct intr_irqsrc*,struct resource*,struct intr_map_data*) ;
 struct mv_ap806_gicp_softc* device_get_softc (int ) ;
 struct intr_map_data* mv_ap806_gicp_convert_map_data (struct mv_ap806_gicp_softc*,struct intr_map_data*) ;

__attribute__((used)) static int
mv_ap806_gicp_setup_intr(device_t dev, struct intr_irqsrc *isrc,
    struct resource *res, struct intr_map_data *data)
{
 struct mv_ap806_gicp_softc *sc;

 sc = device_get_softc(dev);
 data = mv_ap806_gicp_convert_map_data(sc, data);
 if (data == ((void*)0))
  return (EINVAL);

 return (PIC_SETUP_INTR(sc->parent, isrc, res, data));
}
