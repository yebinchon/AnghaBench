
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int DELAY (int) ;
 int RD4 (int *,int ) ;
 int SRC_SCR ;
 int SW_IPU1_RST ;
 int WR4 (int *,int ,int) ;
 int * src_sc ;

int
src_reset_ipu(void)
{
 uint32_t reg;
 int timeout = 10000;

 if (src_sc == ((void*)0))
  return (-1);

 reg = RD4(src_sc, SRC_SCR);
 reg |= SW_IPU1_RST;
 WR4(src_sc, SRC_SCR, reg);

 while (timeout-- > 0) {
  reg = RD4(src_sc, SRC_SCR);
  if (reg & SW_IPU1_RST)
   DELAY(1);
  else
   break;
 }

 if (timeout < 0)
  return (-1);
 else
  return (0);
}
