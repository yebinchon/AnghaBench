
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcu_softc {int dummy; } ;


 int DCU_INT_STATUS ;
 int READ4 (struct dcu_softc*,int ) ;
 int WRITE4 (struct dcu_softc*,int ,int) ;

__attribute__((used)) static void
dcu_intr(void *arg)
{
 struct dcu_softc *sc;
 int reg;

 sc = arg;


 reg = READ4(sc, DCU_INT_STATUS);
 WRITE4(sc, DCU_INT_STATUS, reg);


}
