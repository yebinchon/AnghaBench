
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct aml8726_mmc_softc {int port; TYPE_1__* cmd; } ;
struct TYPE_2__ {int* resp; } ;


 int AML_MMC_CMD_ARGUMENT_REG ;
 int AML_MMC_CMD_CMD_HAS_DATA ;
 int AML_MMC_CMD_RESP_BITS_MASK ;
 int AML_MMC_CMD_RESP_CRC7_FROM_8 ;
 int AML_MMC_CMD_RESP_HAS_DATA ;
 int AML_MMC_CMD_RESP_NO_CRC7 ;
 int AML_MMC_CMD_SEND_REG ;
 int AML_MMC_IRQ_STATUS_CLEAR_IRQ ;
 int AML_MMC_IRQ_STATUS_CMD_BUSY ;
 int AML_MMC_IRQ_STATUS_CMD_DONE_IRQ ;
 int AML_MMC_IRQ_STATUS_RD_CRC16_OK ;
 int AML_MMC_IRQ_STATUS_REG ;
 int AML_MMC_IRQ_STATUS_RESP_CRC7_OK ;
 int AML_MMC_IRQ_STATUS_WR_CRC16_OK ;
 int AML_MMC_LOCK (struct aml8726_mmc_softc*) ;
 int AML_MMC_MULT_CONFIG_REG ;
 int AML_MMC_MULT_CONFIG_RESP_READOUT_EN ;
 int AML_MMC_UNLOCK (struct aml8726_mmc_softc*) ;
 int CSR_BARRIER (struct aml8726_mmc_softc*,int ) ;
 int CSR_READ_4 (struct aml8726_mmc_softc*,int ) ;
 int CSR_WRITE_4 (struct aml8726_mmc_softc*,int ,int) ;
 int MMC_ERR_BADCRC ;
 int MMC_ERR_FAILED ;
 int MMC_ERR_NONE ;
 int aml8726_mmc_finish_command (struct aml8726_mmc_softc*,int) ;
 int aml8726_mmc_soft_reset (struct aml8726_mmc_softc*,int) ;
 int cpu_spinwait () ;

__attribute__((used)) static void
aml8726_mmc_intr(void *arg)
{
 struct aml8726_mmc_softc *sc = (struct aml8726_mmc_softc *)arg;
 uint32_t cmdr;
 uint32_t isr;
 uint32_t mcfgr;
 uint32_t previous_byte;
 uint32_t resp;
 int mmc_error;
 unsigned int i;

 AML_MMC_LOCK(sc);

 isr = CSR_READ_4(sc, AML_MMC_IRQ_STATUS_REG);
 cmdr = CSR_READ_4(sc, AML_MMC_CMD_SEND_REG);

 if (sc->cmd == ((void*)0))
  goto spurious;

 mmc_error = MMC_ERR_NONE;

 if ((isr & AML_MMC_IRQ_STATUS_CMD_DONE_IRQ) != 0) {

  if ((cmdr & AML_MMC_CMD_RESP_NO_CRC7) == 0 &&
      (isr & AML_MMC_IRQ_STATUS_RESP_CRC7_OK) == 0)
   mmc_error = MMC_ERR_BADCRC;
  if ((cmdr & AML_MMC_CMD_RESP_HAS_DATA) != 0 &&
      (isr & AML_MMC_IRQ_STATUS_RD_CRC16_OK) == 0)
   mmc_error = MMC_ERR_BADCRC;
  if ((cmdr & AML_MMC_CMD_CMD_HAS_DATA) != 0 &&
      (isr & AML_MMC_IRQ_STATUS_WR_CRC16_OK) == 0)
   mmc_error = MMC_ERR_BADCRC;
 } else {
spurious:







  CSR_WRITE_4(sc, AML_MMC_IRQ_STATUS_REG,
      (AML_MMC_IRQ_STATUS_CLEAR_IRQ & isr));
  CSR_BARRIER(sc, AML_MMC_IRQ_STATUS_REG);
  AML_MMC_UNLOCK(sc);
  return;
 }

 if ((cmdr & AML_MMC_CMD_RESP_BITS_MASK) != 0) {
  mcfgr = sc->port;
  mcfgr |= AML_MMC_MULT_CONFIG_RESP_READOUT_EN;
  CSR_WRITE_4(sc, AML_MMC_MULT_CONFIG_REG, mcfgr);

  if ((cmdr & AML_MMC_CMD_RESP_CRC7_FROM_8) != 0) {
   previous_byte = 0;

   for (i = 0; i < 4; i++) {
    resp = CSR_READ_4(sc, AML_MMC_CMD_ARGUMENT_REG);
    sc->cmd->resp[3 - i] = (resp << 8) |
        previous_byte;
    previous_byte = (resp >> 24) & 0xff;
   }
  } else
   sc->cmd->resp[0] = CSR_READ_4(sc,
       AML_MMC_CMD_ARGUMENT_REG);
 }

 if ((isr & AML_MMC_IRQ_STATUS_CMD_BUSY) != 0 &&




     (isr & AML_MMC_IRQ_STATUS_CMD_DONE_IRQ) == 0) {
  if (mmc_error == MMC_ERR_NONE)
   mmc_error = MMC_ERR_FAILED;
  aml8726_mmc_soft_reset(sc, 0);

  while ((CSR_READ_4(sc, AML_MMC_IRQ_STATUS_REG) &
      AML_MMC_IRQ_STATUS_CMD_BUSY) != 0)
   cpu_spinwait();
 }

 aml8726_mmc_finish_command(sc, mmc_error);
}
