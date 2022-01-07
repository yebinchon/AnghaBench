
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct aml8726_clkmsr_softc {int dummy; } ;
struct TYPE_2__ {int mux; } ;


 int AML_CLKMSR_0_BUSY ;
 int AML_CLKMSR_0_DURATION_SHIFT ;
 int AML_CLKMSR_0_MEASURE ;
 int AML_CLKMSR_0_MUX_EN ;
 int AML_CLKMSR_0_MUX_SHIFT ;
 int AML_CLKMSR_0_REG ;
 int AML_CLKMSR_2_REG ;
 int AML_CLKMSR_2_RESULT_MASK ;
 int AML_CLKMSR_2_RESULT_SHIFT ;
 int AML_CLKMSR_DURATION ;
 unsigned int AML_CLKMSR_NCLKS ;
 int CSR_BARRIER (struct aml8726_clkmsr_softc*,int ) ;
 int CSR_READ_4 (struct aml8726_clkmsr_softc*,int ) ;
 int CSR_WRITE_4 (struct aml8726_clkmsr_softc*,int ,int) ;
 TYPE_1__* aml8726_clkmsr_clks ;
 int cpu_spinwait () ;

__attribute__((used)) static int
aml8726_clkmsr_clock_frequency(struct aml8726_clkmsr_softc *sc, unsigned clock)
{
 uint32_t value;

 if (clock >= AML_CLKMSR_NCLKS)
  return (0);






 CSR_WRITE_4(sc, AML_CLKMSR_0_REG, 0);

 CSR_BARRIER(sc, AML_CLKMSR_0_REG);

 value = (aml8726_clkmsr_clks[clock].mux << AML_CLKMSR_0_MUX_SHIFT)
     | ((AML_CLKMSR_DURATION - 1) << AML_CLKMSR_0_DURATION_SHIFT)
     | AML_CLKMSR_0_MUX_EN
     | AML_CLKMSR_0_MEASURE;
 CSR_WRITE_4(sc, AML_CLKMSR_0_REG, value);

 CSR_BARRIER(sc, AML_CLKMSR_0_REG);

 while ((CSR_READ_4(sc, AML_CLKMSR_0_REG) & AML_CLKMSR_0_BUSY) != 0)
  cpu_spinwait();

 value &= ~AML_CLKMSR_0_MEASURE;
 CSR_WRITE_4(sc, AML_CLKMSR_0_REG, value);

 CSR_BARRIER(sc, AML_CLKMSR_0_REG);

 value = (((CSR_READ_4(sc, AML_CLKMSR_2_REG) & AML_CLKMSR_2_RESULT_MASK)
     >> AML_CLKMSR_2_RESULT_SHIFT) + AML_CLKMSR_DURATION / 2) /
     AML_CLKMSR_DURATION;

 return value;
}
