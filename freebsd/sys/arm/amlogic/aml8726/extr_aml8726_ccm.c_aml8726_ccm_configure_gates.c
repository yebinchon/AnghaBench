
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct aml8726_ccm_softc {int dev; struct aml8726_ccm_function* soc; } ;
struct aml8726_ccm_gate {int bits; int addr; } ;
struct aml8726_ccm_function {struct aml8726_ccm_gate* gates; int * name; } ;
typedef scalar_t__ ssize_t ;
typedef int phandle_t ;


 int AML_CCM_LOCK (struct aml8726_ccm_softc*) ;
 int AML_CCM_UNLOCK (struct aml8726_ccm_softc*) ;
 int CSR_READ_4 (struct aml8726_ccm_softc*,int ) ;
 int CSR_WRITE_4 (struct aml8726_ccm_softc*,int ,int) ;
 int ENXIO ;
 scalar_t__ OF_getprop_alloc (int ,char*,void**) ;
 int OF_prop_free (char*) ;
 int device_printf (int ,char*,...) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ strncmp (int *,char*,scalar_t__) ;

__attribute__((used)) static int
aml8726_ccm_configure_gates(struct aml8726_ccm_softc *sc)
{
 struct aml8726_ccm_function *f;
 struct aml8726_ccm_gate *g;
 char *function_name;
 char *functions;
 phandle_t node;
 ssize_t len;
 uint32_t value;

 node = ofw_bus_get_node(sc->dev);

 len = OF_getprop_alloc(node, "functions",
     (void **)&functions);

 if (len < 0) {
  device_printf(sc->dev, "missing functions attribute in FDT\n");
  return (ENXIO);
 }

 function_name = functions;

 while (len) {
  for (f = sc->soc; f->name != ((void*)0); f++)
   if (strncmp(f->name, function_name, len) == 0)
    break;

  if (f->name == ((void*)0)) {

   device_printf(sc->dev,
       "unknown function attribute %.*s in FDT\n",
       len, function_name);
  }


  while (*function_name && len) {
   function_name++;
   len--;
  }
  if (len) {
   function_name++;
   len--;
  }

  if (f->name == ((void*)0))
   continue;

  AML_CCM_LOCK(sc);
  for (g = f->gates; g->bits != 0x00000000; g++) {
   value = CSR_READ_4(sc, g->addr);
   value |= g->bits;
   CSR_WRITE_4(sc, g->addr, value);
  }

  AML_CCM_UNLOCK(sc);
 }

 OF_prop_free(functions);

 return (0);
}
