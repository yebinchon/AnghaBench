
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rstmgr_softc {int dummy; } ;


 int CTRL_SWWARMRSTREQ ;
 int WRITE4 (struct rstmgr_softc*,int ,int ) ;
 struct rstmgr_softc* rstmgr_sc ;

int
rstmgr_warmreset(uint32_t reg)
{
 struct rstmgr_softc *sc;

 sc = rstmgr_sc;
 if (sc == ((void*)0))
  return (1);


 WRITE4(sc, reg, CTRL_SWWARMRSTREQ);

 return (0);
}
