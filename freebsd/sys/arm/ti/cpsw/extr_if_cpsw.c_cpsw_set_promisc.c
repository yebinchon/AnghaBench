
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cpswp_softc {int swsc; } ;


 int CPSW_ALE_CONTROL ;
 int CPSW_ALE_CTL_BYPASS ;
 int cpsw_read_4 (int ,int ) ;
 int cpsw_write_4 (int ,int ,int ) ;

__attribute__((used)) static void
cpsw_set_promisc(struct cpswp_softc *sc, int set)
{
 uint32_t reg;
 reg = cpsw_read_4(sc->swsc, CPSW_ALE_CONTROL);
 reg &= ~CPSW_ALE_CTL_BYPASS;
 if (set)
  reg |= CPSW_ALE_CTL_BYPASS;
 cpsw_write_4(sc->swsc, CPSW_ALE_CONTROL, reg);
}
