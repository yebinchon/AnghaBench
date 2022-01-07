
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct audmux_softc {int dummy; } ;


 int AUDMUX_PDCR (int) ;
 int AUDMUX_PTCR (int) ;
 int PDCR_RXDSEL_PORT (int) ;
 int PDCR_RXDSEL_S ;
 int PTCR_SYN ;
 int PTCR_TCLKDIR ;
 int PTCR_TFS_DIR ;
 int WRITE4 (struct audmux_softc*,int ,int) ;

__attribute__((used)) static int
audmux_configure(struct audmux_softc *sc,
 int ssi_port, int audmux_port)
{
 uint32_t reg;


 reg = (PTCR_TFS_DIR | PTCR_TCLKDIR | PTCR_SYN);
 WRITE4(sc, AUDMUX_PTCR(audmux_port), reg);


 reg = (PDCR_RXDSEL_PORT(ssi_port) << PDCR_RXDSEL_S);
 WRITE4(sc, AUDMUX_PDCR(audmux_port), reg);

 return (0);
}
