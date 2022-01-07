
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aml8726_sdxc_softc {int dummy; } ;


 int AML_SDXC_SOFT_RESET ;
 int AML_SDXC_SOFT_RESET_REG ;
 int CSR_BARRIER (struct aml8726_sdxc_softc*,int ) ;
 int CSR_WRITE_4 (struct aml8726_sdxc_softc*,int ,int ) ;
 int DELAY (int) ;

__attribute__((used)) static void
aml8726_sdxc_soft_reset(struct aml8726_sdxc_softc *sc)
{

 CSR_WRITE_4(sc, AML_SDXC_SOFT_RESET_REG, AML_SDXC_SOFT_RESET);
 CSR_BARRIER(sc, AML_SDXC_SOFT_RESET_REG);
 DELAY(5);
}
