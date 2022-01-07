
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct tda19988_softc {int sc_current_page; int sc_dev; int sc_addr; } ;
struct iic_msg {int member_2; int * member_3; int member_1; int member_0; } ;


 int IIC_M_WR ;
 int TDA_CURPAGE_ADDR ;
 int iicbus_transfer (int ,struct iic_msg*,int) ;
 int printf (char*,int) ;

__attribute__((used)) static int
tda19988_set_page(struct tda19988_softc *sc, uint8_t page)
{
 uint8_t addr = TDA_CURPAGE_ADDR;
 uint8_t cmd[2];
 int result;
 struct iic_msg msg[] = {
  { sc->sc_addr, IIC_M_WR, 2, cmd },
 };

 cmd[0] = addr;
 cmd[1] = page;

 result = (iicbus_transfer(sc->sc_dev, msg, 1));
 if (result)
  printf("tda19988_set_page failed: %d\n", result);
 else
  sc->sc_current_page = page;

 return (result);
}
