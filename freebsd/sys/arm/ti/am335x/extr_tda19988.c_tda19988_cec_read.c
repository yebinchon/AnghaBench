
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct tda19988_softc {int sc_dev; int sc_cec_addr; } ;
struct iic_msg {int member_2; int * member_3; int member_1; int member_0; } ;


 int IIC_M_RD ;
 int IIC_M_WR ;
 int iicbus_transfer (int ,struct iic_msg*,int) ;
 int printf (char*,int) ;

__attribute__((used)) static int
tda19988_cec_read(struct tda19988_softc *sc, uint8_t addr, uint8_t *data)
{
 int result;
 struct iic_msg msg[] = {
  { sc->sc_cec_addr, IIC_M_WR, 1, &addr },
  { sc->sc_cec_addr, IIC_M_RD, 1, data },
 };

 result = iicbus_transfer(sc->sc_dev, msg, 2);
 if (result)
  printf("tda19988_cec_read failed: %d\n", result);
 return (result);
}
