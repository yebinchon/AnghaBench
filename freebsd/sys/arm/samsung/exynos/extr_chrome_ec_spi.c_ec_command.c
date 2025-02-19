
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct spi_command {int* tx_cmd; int* rx_cmd; int rx_cmd_sz; int tx_cmd_sz; } ;
struct ec_softc {int dev; } ;
typedef int spi_cmd ;


 int DELAY (int) ;
 int EC_CMD_VERSION0 ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int SPIBUS_TRANSFER (int ,int ,struct spi_command*) ;
 int assert_cs (struct ec_softc*,int) ;
 int device_get_parent (int ) ;
 int device_printf (int ,char*,int) ;
 struct ec_softc* ec_sc ;
 int fill_checksum (int*,int) ;
 int free (int*,int ) ;
 int* malloc (int,int ,int) ;
 int memset (struct spi_command*,int ,int) ;

int
ec_command(uint8_t cmd, uint8_t *dout, uint8_t dout_len,
    uint8_t *dinp, uint8_t dinp_len)
{
 struct spi_command spi_cmd;
 struct ec_softc *sc;
 uint8_t *msg_dout;
 uint8_t *msg_dinp;
 int ret;
 int i;

 memset(&spi_cmd, 0, sizeof(spi_cmd));

 msg_dout = malloc(dout_len + 4, M_DEVBUF, M_NOWAIT | M_ZERO);
 msg_dinp = malloc(dinp_len + 4, M_DEVBUF, M_NOWAIT | M_ZERO);

 spi_cmd.tx_cmd = msg_dout;
 spi_cmd.rx_cmd = msg_dinp;

 if (ec_sc == ((void*)0))
  return (-1);

 sc = ec_sc;

 msg_dout[0] = EC_CMD_VERSION0;
 msg_dout[1] = cmd;
 msg_dout[2] = dout_len;

 for (i = 0; i < dout_len; i++) {
  msg_dout[i + 3] = dout[i];
 }

 fill_checksum(msg_dout, dout_len + 3);

 assert_cs(sc, 1);
 spi_cmd.rx_cmd_sz = spi_cmd.tx_cmd_sz = dout_len + 4;
 ret = SPIBUS_TRANSFER(device_get_parent(sc->dev), sc->dev, &spi_cmd);


 for (i = 0; i < 1000; i++) {
  DELAY(10);
  msg_dout[0] = 0xff;
  spi_cmd.rx_cmd_sz = spi_cmd.tx_cmd_sz = 1;
  SPIBUS_TRANSFER(device_get_parent(sc->dev), sc->dev, &spi_cmd);
  if (msg_dinp[0] == 0xec)
   break;
 }


 for (i = 0; i < (dout_len + 4); i++)
  msg_dout[i] = 0xff;
 spi_cmd.rx_cmd_sz = spi_cmd.tx_cmd_sz = dout_len + 4 - 1;
 ret = SPIBUS_TRANSFER(device_get_parent(sc->dev), sc->dev, &spi_cmd);
 assert_cs(sc, 0);

 if (ret != 0) {
  device_printf(sc->dev, "spibus_transfer returned %d\n", ret);
  free(msg_dout, M_DEVBUF);
  free(msg_dinp, M_DEVBUF);
  return (-1);
 }

 for (i = 0; i < dinp_len; i++) {
  dinp[i] = msg_dinp[i + 2];
 }

 free(msg_dout, M_DEVBUF);
 free(msg_dinp, M_DEVBUF);

 return (0);
}
