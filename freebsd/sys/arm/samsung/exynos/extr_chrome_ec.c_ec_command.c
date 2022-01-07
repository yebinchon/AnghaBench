
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct iic_msg {int member_0; int member_2; int* member_3; int member_1; } ;
struct ec_softc {int dev; } ;


 int EC_CMD_VERSION0 ;
 int IIC_M_RD ;
 int IIC_M_WR ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int device_printf (int ,char*,int) ;
 struct ec_softc* ec_sc ;
 int fill_checksum (int*,int) ;
 int free (int*,int ) ;
 int iicbus_transfer (int ,struct iic_msg*,int) ;
 int* malloc (int,int ,int ) ;

int
ec_command(uint8_t cmd, uint8_t *dout, uint8_t dout_len,
    uint8_t *dinp, uint8_t dinp_len)
{
 struct ec_softc *sc;
 uint8_t *msg_dout;
 uint8_t *msg_dinp;
 int ret;
 int i;

 msg_dout = malloc(dout_len + 4, M_DEVBUF, M_NOWAIT);
 msg_dinp = malloc(dinp_len + 3, M_DEVBUF, M_NOWAIT);

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

 struct iic_msg msgs[] = {
  { 0x1e, IIC_M_WR, dout_len + 4, msg_dout, },
  { 0x1e, IIC_M_RD, dinp_len + 3, msg_dinp, },
 };

 ret = iicbus_transfer(sc->dev, msgs, 2);
 if (ret != 0) {
  device_printf(sc->dev, "i2c transfer returned %d\n", ret);
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
