
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct a10hdmi_softc {int dummy; } ;


 int COMMAND_EOREAD ;
 int CTRL_DDC_ACMD_START ;
 int CTRL_DDC_FIFO_DIR ;
 int CTRL_DDC_FIFO_DIR_READ ;
 int DDC_BYTE_COUNTER ;
 int DDC_COMMAND ;
 int DDC_CTRL ;
 int DDC_DELAY ;
 int DDC_FIFO_CTRL ;
 int DDC_INT_STATUS ;
 int DDC_RETRY ;
 int DDC_SLAVE_ADDR ;
 int DELAY (int ) ;
 int EDDC_ADDR ;
 int EIO ;
 int ETIMEDOUT ;
 int FIFO_CTRL_CLEAR ;
 int HDMI_READ (struct a10hdmi_softc*,int ) ;
 int HDMI_WRITE (struct a10hdmi_softc*,int ,int) ;
 int INT_STATUS_XFER_DONE ;
 int SLAVE_ADDR_EDDC_SHIFT ;
 int SLAVE_ADDR_OFFSET_SHIFT ;
 int SLAVE_ADDR_SEG_SHIFT ;
 int SLAVE_ADDR_SHIFT ;

__attribute__((used)) static int
a10hdmi_ddc_xfer(struct a10hdmi_softc *sc, uint16_t addr, uint8_t seg,
    uint8_t off, int len)
{
 uint32_t val;
 int retry;


 val = HDMI_READ(sc, DDC_CTRL);
 val &= ~CTRL_DDC_FIFO_DIR;
 val |= CTRL_DDC_FIFO_DIR_READ;
 HDMI_WRITE(sc, DDC_CTRL, val);


 val = (addr << SLAVE_ADDR_SHIFT) | (seg << SLAVE_ADDR_SEG_SHIFT) |
     (EDDC_ADDR << SLAVE_ADDR_EDDC_SHIFT) |
     (off << SLAVE_ADDR_OFFSET_SHIFT);
 HDMI_WRITE(sc, DDC_SLAVE_ADDR, val);


 val = HDMI_READ(sc, DDC_FIFO_CTRL);
 val |= FIFO_CTRL_CLEAR;
 HDMI_WRITE(sc, DDC_FIFO_CTRL, val);


 HDMI_WRITE(sc, DDC_BYTE_COUNTER, len);


 HDMI_WRITE(sc, DDC_COMMAND, COMMAND_EOREAD);


 val = HDMI_READ(sc, DDC_CTRL);
 val |= CTRL_DDC_ACMD_START;
 HDMI_WRITE(sc, DDC_CTRL, val);


 retry = DDC_RETRY;
 while (--retry > 0) {
  val = HDMI_READ(sc, DDC_CTRL);
  if ((val & CTRL_DDC_ACMD_START) == 0)
   break;
  DELAY(DDC_DELAY);
 }
 if (retry == 0)
  return (ETIMEDOUT);


 val = HDMI_READ(sc, DDC_INT_STATUS);
 if ((val & INT_STATUS_XFER_DONE) == 0)
  return (EIO);

 return (0);
}
