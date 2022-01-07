
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s10_svc_softc {int dev; } ;
typedef int phandle_t ;
typedef int method ;
typedef int * intel_smc_callfn_t ;


 scalar_t__ OF_getprop (int ,char*,char*,int) ;
 int * arm_smccc_hvc ;
 int * arm_smccc_smc ;
 int device_printf (int ,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static intel_smc_callfn_t
s10_svc_get_callfn(struct s10_svc_softc *sc, phandle_t node)
{
 char method[16];

 if ((OF_getprop(node, "method", method, sizeof(method))) > 0) {
  if (strcmp(method, "hvc") == 0)
   return (arm_smccc_hvc);
  else if (strcmp(method, "smc") == 0)
   return (arm_smccc_smc);
  else
   device_printf(sc->dev,
       "Invalid method \"%s\"\n", method);
 } else
  device_printf(sc->dev, "SMC method not provided\n");

 return (((void*)0));
}
