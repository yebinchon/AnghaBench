
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_ap806_gicp_softc {int dev; int parent; } ;
struct intr_map_data {scalar_t__ type; } ;
struct intr_irqsrc {int isrc_dev; } ;
typedef int device_t ;


 int EINVAL ;
 int ENOTSUP ;
 scalar_t__ INTR_MAP_DATA_FDT ;
 int PIC_MAP_INTR (int ,struct intr_map_data*,struct intr_irqsrc**) ;
 struct mv_ap806_gicp_softc* device_get_softc (int ) ;
 struct intr_map_data* mv_ap806_gicp_convert_map_data (struct mv_ap806_gicp_softc*,struct intr_map_data*) ;

__attribute__((used)) static int
mv_ap806_gicp_map_intr(device_t dev, struct intr_map_data *data,
    struct intr_irqsrc **isrcp)
{
 struct mv_ap806_gicp_softc *sc;
 int ret;

 sc = device_get_softc(dev);

 if (data->type != INTR_MAP_DATA_FDT)
  return (ENOTSUP);

 data = mv_ap806_gicp_convert_map_data(sc, data);
 if (data == ((void*)0))
  return (EINVAL);

 ret = PIC_MAP_INTR(sc->parent, data, isrcp);
 (*isrcp)->isrc_dev = sc->dev;
 return(ret);
}
