
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int bus_size_t ;


 int FSL_OCOTP_LAST_REG ;
 int RD4 (int *,int) ;
 int fsl_ocotp_devmap () ;
 int * ocotp_regs ;
 int * ocotp_sc ;
 int panic (char*) ;

uint32_t
fsl_ocotp_read_4(bus_size_t off)
{

 if (off > FSL_OCOTP_LAST_REG)
  panic("fsl_ocotp_read_4: offset out of range");


 if (ocotp_sc != ((void*)0))
  return (RD4(ocotp_sc, off));







 if (ocotp_regs == ((void*)0))
  fsl_ocotp_devmap();

 return (ocotp_regs[off / 4]);
}
