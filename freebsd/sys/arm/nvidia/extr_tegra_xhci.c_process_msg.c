
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct tegra_xhci_softc {int dev; int clk_xusb_ss; int clk_xusb_falcon_src; } ;


 int MBOX_CMD_ACK ;
 int MBOX_CMD_NAK ;







 int clk_get_freq (int ,int*) ;
 int clk_set_freq (int ,int,int ) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static void
process_msg(struct tegra_xhci_softc *sc, uint32_t req_cmd, uint32_t req_data,
    uint32_t *resp_cmd, uint32_t *resp_data)
{
 uint64_t freq;
 int rv;


 *resp_data = req_data;
 switch (req_cmd) {
 case 136:
 case 141:
  rv = clk_set_freq(sc->clk_xusb_falcon_src, req_data * 1000ULL,
      0);
  if (rv == 0) {
   rv = clk_get_freq(sc->clk_xusb_falcon_src, &freq);
   *resp_data = (uint32_t)(freq / 1000);
  }
  *resp_cmd = rv == 0 ? MBOX_CMD_ACK: MBOX_CMD_NAK;
  break;

 case 135:
 case 140:
  rv = clk_set_freq(sc->clk_xusb_ss, req_data * 1000ULL,
      0);
  if (rv == 0) {
   rv = clk_get_freq(sc->clk_xusb_ss, &freq);
   *resp_data = (uint32_t)(freq / 1000);
  }
  *resp_cmd = rv == 0 ? MBOX_CMD_ACK: MBOX_CMD_NAK;
  break;

 case 132:

  *resp_cmd = 0;
  break;

 case 131:
 case 130:
  *resp_cmd = MBOX_CMD_NAK;
  break;

 case 133:

  *resp_cmd = MBOX_CMD_ACK;
  break;


 case 129:
 case 128:

  *resp_cmd = MBOX_CMD_NAK;
  break;

 case 139:
 case 138:

  *resp_cmd = MBOX_CMD_NAK;
  break;

 case 143:
 case 144:
 case 142:
 case 137:
 case 134:
  device_printf(sc->dev,
      "Received unused/unexpected command: %u\n", req_cmd);
  *resp_cmd = 0;
  break;

 default:
  device_printf(sc->dev,
      "Received unknown command: %u\n", req_cmd);
 }
}
