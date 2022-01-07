
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_int ;
struct gic_v3_softc {int dev; } ;


 int ENXIO ;
 int ICC_SRE_EL1_SRE ;
 int PCPU_GET (int ) ;
 int READ_SPECIALREG (int ) ;
 int WRITE_SPECIALREG (int ,int) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int ) ;
 int icc_sre_el1 ;
 int isb () ;

__attribute__((used)) static int
gic_v3_cpu_enable_sre(struct gic_v3_softc *sc)
{
 uint64_t sre;
 u_int cpuid;

 cpuid = PCPU_GET(cpuid);




 sre = READ_SPECIALREG(icc_sre_el1);
 sre |= ICC_SRE_EL1_SRE;
 WRITE_SPECIALREG(icc_sre_el1, sre);
 isb();



 sre = READ_SPECIALREG(icc_sre_el1);
 if ((sre & ICC_SRE_EL1_SRE) == 0) {

  device_printf(sc->dev, "ERROR: CPU%u cannot enable CPU interface "
      "via system registers\n", cpuid);
  return (ENXIO);
 } else if (bootverbose) {
  device_printf(sc->dev,
      "CPU%u enabled CPU interface via system registers\n",
      cpuid);
 }

 return (0);
}
