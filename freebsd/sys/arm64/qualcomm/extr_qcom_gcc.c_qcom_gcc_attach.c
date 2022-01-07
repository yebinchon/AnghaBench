
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_gcc_softc {int res; } ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 struct qcom_gcc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int qcom_gcc_spec ;
 int qcom_qdss_enable (struct qcom_gcc_softc*) ;

__attribute__((used)) static int
qcom_gcc_attach(device_t dev)
{
 struct qcom_gcc_softc *sc;

 sc = device_get_softc(dev);

 if (bus_alloc_resources(dev, qcom_gcc_spec, &sc->res) != 0) {
  device_printf(dev, "cannot allocate resources for device\n");
  return (ENXIO);
 }






 qcom_qdss_enable(sc);

 return (0);
}
