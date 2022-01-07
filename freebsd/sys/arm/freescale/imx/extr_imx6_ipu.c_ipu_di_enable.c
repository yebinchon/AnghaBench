
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ipu_softc {int dummy; } ;


 int DISP_GEN_DI0_CNTR_RELEASE ;
 int DISP_GEN_DI1_CNTR_RELEASE ;
 int IPU_DISP_GEN ;
 int IPU_READ4 (struct ipu_softc*,int ) ;
 int IPU_WRITE4 (struct ipu_softc*,int ,int ) ;

__attribute__((used)) static void
ipu_di_enable(struct ipu_softc *sc, int di)
{
 uint32_t flag, reg;

 flag = di ? DISP_GEN_DI1_CNTR_RELEASE : DISP_GEN_DI0_CNTR_RELEASE;
 reg = IPU_READ4(sc, IPU_DISP_GEN);
 reg |= flag;
 IPU_WRITE4(sc, IPU_DISP_GEN, reg);
}
