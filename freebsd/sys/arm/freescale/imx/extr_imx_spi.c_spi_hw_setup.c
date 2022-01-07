
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
typedef int u_int ;
struct spi_softc {int ctlreg; } ;


 unsigned int CFGREG_SCLKCTL_SHIFT ;
 unsigned int CFGREG_SCLKPHA_SHIFT ;
 unsigned int CFGREG_SCLKPOL_SHIFT ;
 unsigned int CFGREG_SSPOL_SHIFT ;
 int CTLREG_BLEN_SHIFT ;
 int CTLREG_CMODES_MASTER ;
 int CTLREG_EN ;
 int CTLREG_SMC ;
 unsigned int DMA_RX_THRESH_SHIFT ;
 unsigned int DMA_TX_THRESH_SHIFT ;
 int ECSPI_CFGREG ;
 int ECSPI_CTLREG ;
 int ECSPI_DMAREG ;
 unsigned int FIFO_RXTHRESH ;
 unsigned int FIFO_TXTHRESH ;
 int RD4 (struct spi_softc*,int ) ;
 int SPIBUS_CS_HIGH ;
 int SPIBUS_MODE_CPHA ;
 int SPIBUS_MODE_CPOL ;
 int WR4 (struct spi_softc*,int ,unsigned int) ;
 int spi_calc_clockdiv (struct spi_softc*,int) ;

__attribute__((used)) static void
spi_hw_setup(struct spi_softc *sc, u_int cs, u_int mode, u_int freq)
{
 uint32_t reg;





 sc->ctlreg = CTLREG_EN | CTLREG_CMODES_MASTER | CTLREG_SMC;
 sc->ctlreg |= spi_calc_clockdiv(sc, freq);
 sc->ctlreg |= 7 << CTLREG_BLEN_SHIFT;
 WR4(sc, ECSPI_CTLREG, sc->ctlreg);






 reg = 0;
 if (cs & SPIBUS_CS_HIGH)
  reg |= 1u << CFGREG_SSPOL_SHIFT;
 if (mode & SPIBUS_MODE_CPHA)
  reg |= 1u << CFGREG_SCLKPHA_SHIFT;
 if (mode & SPIBUS_MODE_CPOL) {
  reg |= 1u << CFGREG_SCLKPOL_SHIFT;
  reg |= 1u << CFGREG_SCLKCTL_SHIFT;
 }
 WR4(sc, ECSPI_CFGREG, reg);




 reg = (FIFO_RXTHRESH << DMA_RX_THRESH_SHIFT);
 reg |= (FIFO_TXTHRESH << DMA_TX_THRESH_SHIFT);
 WR4(sc, ECSPI_DMAREG, reg);





 (void)RD4(sc, ECSPI_CFGREG);
}
