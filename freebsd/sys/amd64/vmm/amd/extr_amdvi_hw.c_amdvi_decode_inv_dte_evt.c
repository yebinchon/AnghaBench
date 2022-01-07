
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint16_t ;


 int amdvi_decode_evt_flag (int) ;
 int printf (char*,int,int,int ) ;

__attribute__((used)) static void
amdvi_decode_inv_dte_evt(uint16_t devid, uint16_t domid, uint64_t addr,
    uint16_t flag)
{

 printf("\t[IO_PAGE_FAULT EVT: devId:0x%x DomId:0x%x"
     " Addr:0x%lx",
     devid, domid, addr);
 amdvi_decode_evt_flag(flag);
}
